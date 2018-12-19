#!/usr/bin/python

import textwrap
import shutil
import re
import pandas as pd
import os
import argparse
#import pp
import matplotlib.pyplot as plt
#import matplotlib
#matplotlib.use('TkAgg')
#import matplotlib.pyplot as plt



def main(directory, graph, rest):
     to_afni_format(directory)
     slice_time_correction(directory)
     motion_correction(directory)

     if graph:
         make_graph(directory)


def get_first_dicom(dir_address):
    '''
    returns the name of the first dicom file
    in the directory
    '''
    for root, dirs, files in os.walk(dir_address):
        for single_file in files:
            if re.search('.*ima|.*dcm', single_file, flags=re.IGNORECASE):
                return os.path.abspath(
                    os.path.join(dir_address, single_file))

def to_afni_format(directory):
    '''
    converts nifti images to afni format
    '''
    print '='*80, '\nNifti to afni brick\n', '='*80

    afniDir=os.path.join(directory, 'REST', 'motion_afni')
    if not os.path.exists(afniDir):
        os.mkdir(afniDir)

    #if os.path.isfile(os.path.join(directory, 'REST', 'REST+orig.BRIK')):
    if os.path.isfile(os.path.join(afniDir, 'REST+orig.BRIK')):
        print '\tAlready done'
    else:
        for root, dirs, files in os.walk(os.path.join(directory, 'REST')):
            for single_file in files:
                if re.search('nii.gz$', single_file):
                    command = '3dcopy {restNifti} {afniOut}'.format(
                        restNifti=os.path.join(root, single_file),
                        afniOut=os.path.join(afniDir,'REST'))
                        #afniOut=os.path.join(root, 'REST'))
                    print '-'*80, '\n', re.sub('\s+', ' ', command)
                    print '-'*80
                    output = os.popen(command).read()

def slice_time_correction(directory):
    '''
    Uses afni 3dTshift
    '''

    afniDir=os.path.join(directory, 'REST', 'motion_afni')

    print '='*80, '\nSlice time correction\n', '='*80
#    command = '3dTshift \
#            -verbose \
#            -TR 3.5s \
#            -tzero 0 \
#            -prefix {restDir}/tShift_rest \
#            -tpattern alt+z {restDir}/REST+orig[4..115]'.format(
#                restDir=os.path.join(directory, 'REST'))

    command = '3dTshift \
            -verbose \
            -TR 3.5s \
            -tzero 0 \
            -prefix {afniDir}/tShift_rest \
            -tpattern alt+z {afniDir}/REST+orig[4..115]'.format(
                afniDir=afniDir)
                #afniDir=os.path.join(directory, 'REST'))

    #if os.path.isfile(os.path.join(directory, 'REST', 'tShift_rest.BRIK')):
    if os.path.isfile(os.path.join(afniDir, 'tShift_rest+orig.BRIK')):
        print '\tAlready done'
    else:
        print '-'*80, '\n', re.sub('\s+', ' ', command), '\n', '-'*80
        output = os.popen(command).read()

def motion_correction(directory):
    '''
    Uses 3dvolreg
    '''
    
    afniDir=os.path.join(directory, 'REST', 'motion_afni')
    
    print '='*80, '\nMotion parameter calculation\n', '='*80
    command = '3dvolreg \
            -verbose \
            -prefix {afniDir}/reg \
            -dfile {afniDir}/reg_param.txt \
            -maxdisp1D {afniDir}/maxDisp.txt \
            {afniDir}/tShift_rest+orig'.format(
                afniDir=afniDir)
                #afniDir=os.path.join(directory, 'REST'))
    if os.path.isfile(os.path.join(afniDir, 'maxDisp.txt')):
    #if os.path.isfile(os.path.join(directory, 'REST', 'maxDisp.txt')):
        print '\tAlready done'
    else:
        print '-'*80, '\n', re.sub('\s+', ' ', command), '\n', '-'*80
        output = os.popen(command).read()


def make_graph(directory):

    afniDir=os.path.join(directory, 'REST', 'motion_afni')

    print '='*80, '\nMake motion graph in the REST directory\n', '='*80
    if '.' in directory and len(directory) < 3: #if user has given -dir ./
        subj_name = re.search('[A-Z]{3}\d{2,3}', os.getcwd()).group(0)
    else:
        subj_name = re.search('[A-Z]{3}\d{2,3}', directory).group(0)

    df = pd.read_csv(os.path.join(
        afniDir, 'reg_param.txt'), sep='\s+', index_col=0, names=['roll', 'pitch', 'yaw', 'dS', 'dL', 'dP', 'rmsold', 'rmnew'])

    maxdisp_df = pd.read_csv(os.path.join(afniDir, 'maxDisp.txt'), sep='\s+', skiprows=[0,1], names=['maxDisp'])

    plt.ioff()
    fig = plt.figure(figsize=(12, 8))
    ax1 = plt.subplot(221)
    ax2 = plt.subplot(223)
    ax3 = plt.subplot(122)

    ax1.grid(False)
    ax2.grid(False)
    ax3.grid(False)

    df[['roll', 'pitch', 'yaw']].plot(ax=ax1,grid=False)
    ax1.set_title('Rotation')
    ax1.set_xlabel('Time points')
    ax2.set_ylabel('degree')

    df[['dS', 'dL', 'dP']].plot(ax=ax2,grid=False)
    ax2.set_title('Displacement')
    ax2.set_xlabel('Time points')
    ax2.set_ylabel('mm')

    maxdisp_df.plot(ax=ax3,grid=False)
    ax3.set_title('Maximum displacements')
    ax3.set_xlabel('Time points')
    ax3.set_ylabel('mm')
    #df.abs().describe().ix['max',
                           #['roll', 'pitch', 'yaw',
                            #'dS', 'dL', 'dP']].plot(
                                #kind='bar', ax=axes[2])

    fig.suptitle("%s" % subj_name, fontsize=20)
    fig.savefig(os.path.join(afniDir, '%s_motion.png' % subj_name))



if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        formatter_class=argparse.RawDescriptionHelpFormatter,
        description=textwrap.dedent('''\
            {codeName} : Returns motion parameters
            extracted from dicom within the directory
            ====================
            eg) {codeName}
            eg) {codeName} --dir /Users/kevin/NOR04_CKI
            '''.format(codeName=os.path.basename(__file__))))
    parser.add_argument(
        '-dir', '--directory',
        help='Data directory location, default=pwd',
        default=os.getcwd())
    parser.add_argument(
        '-g', '--graph',
        help='Produce graph in png format',
        default=True)
    parser.add_argument(
        '-r', '--rest',
        help='Process the dicoms directly under the input dir',
        default=False)
    args = parser.parse_args()

    main(args.directory, args.graph, args.rest)
