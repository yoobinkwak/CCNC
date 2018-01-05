import os 
import re
import sys
from os.path import join, basename, isfile, isdir
#import nibabel as nb
import numpy as np
import pandas as pd



subj_list = []
L_loc = []
R_loc = []
Left_loc = []
Right_loc = []
for fn in os.listdir('.'):
	if fn.startswith('FEP'):
		if not '.gz' in fn:			
			FEP_subj = fn
			FEP_loc = fn+'/baseline/'
			L_file = 'L_extracted_counts.txt'
			R_file = 'R_extracted_counts.txt'
			Left_file = 'Left_extracted_counts.txt'
			Right_file = 'Right_extracted_counts.txt'
			subj_list.append(FEP_subj)
			L_loc.append(FEP_loc+L_file)
			R_loc.append(FEP_loc+R_file)
			Left_loc.append(FEP_loc+Left_file)
			Right_loc.append(FEP_loc+Right_file)
	if fn.startswith('NOR'):
		if not '.gz' in fn:
			NOR_subj = fn
			NOR_loc = fn+'/baseline/'
			L_file = 'L_extracted_counts.txt'
			R_file = 'R_extracted_counts.txt'
			Left_file = 'Left_extracted_counts.txt'
			Right_file = 'Right_extracted_counts.txt'
			subj_list.append(NOR_subj)
			L_loc.append(NOR_loc+L_file)
			R_loc.append(NOR_loc+R_file)
			Left_loc.append(NOR_loc+Left_file)
			Right_loc.append(NOR_loc+Right_file)

#print(L_loc)
#print(R_loc)
#print(Left_loc)
#print(Right_loc)
#print(subj_list)
	

Left_frame = pd.DataFrame()
Left_list = []
for subj in subj_list:
	Left_counts = [x for x in Left_loc if subj in x]
	#print(Left_counts)
	for Left_count in Left_counts:
		a = pd.read_csv(Left_count, sep='\t', header=None, index_col=0)
		b = a.T
		c = b.assign(Subject = [subj])
		Left_list.append(c)
	Left_frame = pd.concat(Left_list)
#print(Left_frame.shape)
Left_frame.to_csv('Left_counts.csv')

Right_frame = pd.DataFrame()
Right_list = []
for subj in subj_list:
	Right_counts = [x for x in Right_loc if subj in x]
	for Right_count in Right_counts:
		a = pd.read_csv(Right_count, sep='\t', header=None, index_col=0)
		b = a.T
		c = b.assign(Subject = [subj])
		Right_list.append(c)
	Right_frame = pd.concat(Right_list)
Right_frame.to_csv('Right_counts.csv')

L_frame = pd.DataFrame()
L_list = []
for subj in subj_list:
	L_counts = [x for x in L_loc if subj in x]
	for L_count in L_counts:
		a = pd.read_csv(L_count, sep='\t', header=None, index_col=0)
		b = a.T
		c = b.assign(Subject = [subj])
		L_list.append(c)
	L_frame = pd.concat(L_list)
L_frame.to_csv('L_counts.csv')

R_frame = pd.DataFrame()
R_list = []
for subj in subj_list:
	R_counts = [x for x in R_loc if subj in x]
	for R_count in R_counts:
		a = pd.read_csv(R_count, sep='\t', header=None, index_col=0)
		b = a.T
		c = b.assign(Subject = [subj])
		R_list.append(c)
	R_frame = pd.concat(R_list)
R_frame.to_csv('R_counts.csv')



#a = pd.read_csv('FEP01/baseline/Left_extracted_counts.txt', sep='\t', header=None, index_col=0)
#b = a.T
#c = b.assign(Subject = ['FEP01'])
#
#d = pd.read_csv('NOR84/baseline/Left_extracted_counts.txt', sep='\t', header=None, index_col=0)
#e = d.T
#f = e.assign(Subject = ['NOR84'])
#
#L1 = list(c.columns)
#L2 = list(f.columns)
#L=list(set(L1).intersection(L2))
#x = pd.merge(c, f, on=L, how='outer')
#
#
#r = pd.read_csv('FEP39_PJU/baseline/Left_extracted_counts.txt', sep='\t', header=None, index_col=0)
#s = r.T
#t = s.assign(Subject = ['FEP39'])
#
#L3 = list(x.columns)
#L4 = list(t.columns)
#L5=list(set(L3).intersection(L4))
#q = pd.merge(x, t, on=L5, how='outer')
