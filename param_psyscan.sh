subj=${1}
time=${2}

check_T1_slices=`ls ${subj}/${time}/TFL3D_176_SLAB_* | wc -l`
echo "T1 slices" ${check_T1_slices}
if [ ! ${check_T1_slices} -eq 176 ] ; then
    echo "${subj} ${time} T1 slices error" >> ${subj}/${time}/param_error.txt
fi

check_T2tse_slices=`ls ${subj}/${time}/AX_T2_TSE_P2* | wc -l`
echo "T2 tse slices" ${check_T2tse_slices}
if [ ! ${check_T2tse_slices} -eq 32 ] ; then
    echo "${subj} ${time} T2_tse slices error" >> ${subj}/${time}/param_error.txt
fi

check_T2flair_slices=`ls ${subj}/${time}/SPC_IR_SAG_3D_FLAIR_P2_ISO* | wc -l`
echo "T2 flair slices" ${check_T2flair_slices}
if [ ! ${check_T2flair_slices} -eq 160 ] ; then
    echo "${subj} ${time} T2_flair slices error" >> ${subj}/${time}/param_error.txt
fi

check_REST_slices=`ls ${subj}/${time}/REST_FMRI_PHASE_168* | wc -l`
echo "REST slices" ${check_REST_slices}
if [ ! ${check_REST_slices} -eq 10560 ] ; then
    echo "${subj} ${time} REST slices error" >> ${subj}/${time}/param_error.txt
fi

check_DTI_slices=`ls ${subj}/${time}/DTI_64D_B1K\(2\)_\(NO_AC-PC\)_00* | wc -l`
echo "DTI slices" ${check_DTI_slices}
if [ ! ${check_DTI_slices} -eq 69 ] ; then
    echo "${subj} ${time} DTI slices error" >> ${subj}/${time}/param_error.txt
fi


T1_dicom=${subj}/${time}/TFL3D_176_SLAB_*/*.0030.*
dicom_hdr ${T1_dicom} >> ${subj}/${time}/T1.0030.txt
T1_hdr=${subj}/${time}/T1.0030.txt
if grep -q "ACQ Slice Thickness//1.1999999284744" ${T1_hdr} && grep -q "ACQ Repetition Time//2300" ${T1_hdr} && grep -q "ACQ Echo Time//2.96" ${T1_hdr} && grep -q "ACQ Inversion Time//900" ${T1_hdr} && grep -q "ACQ Acquisition Matrix// 0 256 240 0" ${T1_hdr} && grep -q "ACQ Phase Encoding Direction//ROW" ${T1_hdr} ; then
    echo ${subj} ${time} "T1 acquisition parameters cofirmed"
else
    echo ${subj} ${time} "T1 acquisition parameters error"
fi

T2tse_dicom=${subj}/${time}/AX_T2_TSE_P2*/*.0030.*
dicom_hdr ${T2tse_dicom} >> ${subj}/${time}/T2tse.0030.txt

T2flair_dicom=${subj}/${time}/SPC_IR_SAG_3D_FLAIR_P2_ISO*/*.0030.*
dicom_hdr ${T2flair_dicom} >> ${subj}/${time}/T2flair.0030.txt


REST_dicom=${subj}/${time}/REST_FMRI_PHASE_168*/*.0030.*
dicom_hdr ${REST_dicom} >> ${subj}/${time}/REST.0030.txt
DTI_dicom=${subj}/${time}/DTI_64D_B1K\(2\)_\(NO_AC-PC\)_00*/*.0030.*
dicom_hdr ${DTI_dicom} >> ${subj}/${time}/DTI.0030.txt
