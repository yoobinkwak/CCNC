mkdir CCNC_MRI_3T/counts_20180517

CHR_BL_DKI=`ls CCNC_MRI_3T/CHR/CHR*/baseline/DKI/20*gz | wc -l`
CHR_BL_DKI_30D=`ls CCNC_MRI_3T/CHR/CHR*/baseline/DKI/20*30D*gz | wc -l`
CHR_BL_DKI_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/baseline/DKI/20*SCOUT*gz | wc -l`
CHR_BL_DTI=`ls CCNC_MRI_3T/CHR/CHR*/baseline/DTI/20*gz | wc -l`
CHR_BL_DTI_64D=`ls CCNC_MRI_3T/CHR/CHR*/baseline/DTI/20*64D*gz | wc -l`
CHR_BL_DTI_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/baseline/DTI/20*SCOUT*gz | wc -l`
CHR_BL_REST=`ls CCNC_MRI_3T/CHR/CHR*/baseline/REST/20*gz | wc -l`
CHR_BL_REST_REST=`ls CCNC_MRI_3T/CHR/CHR*/baseline/REST/20*REST*gz | wc -l`
CHR_BL_REST_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/baseline/REST/20*SCOUT*gz | wc -l`
CHR_BL_T1=`ls CCNC_MRI_3T/CHR/CHR*/baseline/T1/20*gz | wc -l`
CHR_BL_T1_TFL3D=`ls CCNC_MRI_3T/CHR/CHR*/baseline/T1/20*TF*gz | wc -l`
CHR_BL_T1_DSPGR=`ls CCNC_MRI_3T/CHR/CHR*/baseline/T1/20*DS*gz | wc -l`
CHR_BL_T1_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/baseline/T1/20*SCOUT*gz | wc -l`
CHR_BL_T1_o=`ls CCNC_MRI_3T/CHR/CHR*/baseline/T1/o*gz | wc -l`
CHR_BL_T1_co=`ls CCNC_MRI_3T/CHR/CHR*/baseline/T1/co*gz | wc -l`

echo CHR BL DKI nifti total count: ${CHR_BL_DKI} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL DKI DKI30D count: ${CHR_BL_DKI_30D} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL DKI SCOUT count: ${CHR_BL_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
check_CHR_BL_DKI=$(( ${CHR_BL_DKI_30D} + ${CHR_BL_DKI_SCOUT} ))
if [ ${check_CHR_BL_DKI} -eq ${CHR_BL_DKI} ] ; then
    echo CHR BL DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
else
    echo CHR BL DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
fi

echo CHR BL DTI nifti total count: ${CHR_BL_DTI} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL DTI DTI30D count: ${CHR_BL_DTI_64D} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL DTI SCOUT count: ${CHR_BL_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
check_CHR_BL_DTI=$(( ${CHR_BL_DTI_64D} + ${CHR_BL_DTI_SCOUT} ))
if [ ${check_CHR_BL_DTI} -eq ${CHR_BL_DTI} ] ; then
    echo CHR BL DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
else
    echo CHR BL DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
fi

echo CHR BL REST nifti total count: ${CHR_BL_REST} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL REST REST count: ${CHR_BL_REST_REST} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL REST SCOUT count: ${CHR_BL_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
check_CHR_BL_REST=$(( ${CHR_BL_REST_REST} + ${CHR_BL_REST_SCOUT} ))
if [ ${check_CHR_BL_REST} -eq ${CHR_BL_REST} ] ; then
    echo CHR BL REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
else
    echo CHR BL REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
fi

echo CHR BL T1 nifti total count: ${CHR_BL_T1} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL T1 TFL3D count: ${CHR_BL_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL T1 DSPGR count: ${CHR_BL_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL T1 SCOUT count: ${CHR_BL_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL oriented T1 count: ${CHR_BL_T1_o} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
echo CHR BL cropped and oriented T1 count: ${CHR_BL_T1_co} >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
check_CHR_BL_T1=$(( ${CHR_BL_T1_TFL3D} + ${CHR_BL_T1_DSPGR} + ${CHR_BL_T1_SCOUT} ))
if [ ${check_CHR_BL_T1} -eq ${CHR_BL_T1} ] ; then
    echo CHR BL TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
else
    echo CHR BL TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/CHR_BL_counts.txt
fi


CHR_FU_2Y_DKI=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/DKI/20*gz | wc -l`
CHR_FU_2Y_DKI_30D=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/DKI/20*30D*gz | wc -l`
CHR_FU_2Y_DKI_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/DKI/20*SCOUT*gz | wc -l`
CHR_FU_2Y_DTI=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/DTI/20*gz | wc -l`
CHR_FU_2Y_DTI_64D=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/DTI/20*64D*gz | wc -l`
CHR_FU_2Y_DTI_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/DTI/20*SCOUT*gz | wc -l`
CHR_FU_2Y_REST=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/REST/20*gz | wc -l`
CHR_FU_2Y_REST_REST=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/REST/20*REST*gz | wc -l`
CHR_FU_2Y_REST_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/REST/20*SCOUT*gz | wc -l`
CHR_FU_2Y_T1=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/T1/20*gz | wc -l`
CHR_FU_2Y_T1_TFL3D=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/T1/20*TF*gz | wc -l`
CHR_FU_2Y_T1_DSPGR=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/T1/20*DS*gz | wc -l`
CHR_FU_2Y_T1_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/T1/20*SCOUT*gz | wc -l`
CHR_FU_2Y_T1_o=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/T1/o*gz | wc -l`
CHR_FU_2Y_T1_co=`ls CCNC_MRI_3T/CHR/CHR*/followUp/2yfu/T1/co*gz | wc -l`

echo CHR FU_2Y DKI nifti total count: ${CHR_FU_2Y_DKI} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y DKI DKI30D count: ${CHR_FU_2Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y DKI SCOUT count: ${CHR_FU_2Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
check_CHR_FU_2Y_DKI=$(( ${CHR_FU_2Y_DKI_30D} + ${CHR_FU_2Y_DKI_SCOUT} ))
if [ ${check_CHR_FU_2Y_DKI} -eq ${CHR_FU_2Y_DKI} ] ; then
    echo CHR FU_2Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
else
    echo CHR FU_2Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
fi

echo CHR FU_2Y DTI nifti total count: ${CHR_FU_2Y_DTI} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y DTI DTI30D count: ${CHR_FU_2Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y DTI SCOUT count: ${CHR_FU_2Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
check_CHR_FU_2Y_DTI=$(( ${CHR_FU_2Y_DTI_64D} + ${CHR_FU_2Y_DTI_SCOUT} ))
if [ ${check_CHR_FU_2Y_DTI} -eq ${CHR_FU_2Y_DTI} ] ; then
    echo CHR FU_2Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
else
    echo CHR FU_2Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
fi

echo CHR FU_2Y REST nifti total count: ${CHR_FU_2Y_REST} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y REST REST count: ${CHR_FU_2Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y REST SCOUT count: ${CHR_FU_2Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
check_CHR_FU_2Y_REST=$(( ${CHR_FU_2Y_REST_REST} + ${CHR_FU_2Y_REST_SCOUT} ))
if [ ${check_CHR_FU_2Y_REST} -eq ${CHR_FU_2Y_REST} ] ; then
    echo CHR FU_2Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
else
    echo CHR FU_2Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
fi

echo CHR FU_2Y T1 nifti total count: ${CHR_FU_2Y_T1} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y T1 TFL3D count: ${CHR_FU_2Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y T1 DSPGR count: ${CHR_FU_2Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y T1 SCOUT count: ${CHR_FU_2Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y oriented T1 count: ${CHR_FU_2Y_T1_o} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
echo CHR FU_2Y cropped and oriented T1 count: ${CHR_FU_2Y_T1_co} >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
check_CHR_FU_2Y_T1=$(( ${CHR_FU_2Y_T1_TFL3D} + ${CHR_FU_2Y_T1_DSPGR} + ${CHR_FU_2Y_T1_SCOUT} ))
if [ ${check_CHR_FU_2Y_T1} -eq ${CHR_FU_2Y_T1} ] ; then
    echo CHR FU_2Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
else
    echo CHR FU_2Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/CHR_FU_2Y_counts.txt
fi


CHR_2Y_DKI=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/DKI/20*gz | wc -l`
CHR_2Y_DKI_30D=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/DKI/20*30D*gz | wc -l`
CHR_2Y_DKI_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/DKI/20*SCOUT*gz | wc -l`
CHR_2Y_DTI=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/DTI/20*gz | wc -l`
CHR_2Y_DTI_64D=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/DTI/20*64D*gz | wc -l`
CHR_2Y_DTI_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/DTI/20*SCOUT*gz | wc -l`
CHR_2Y_REST=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/REST/20*gz | wc -l`
CHR_2Y_REST_REST=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/REST/20*REST*gz | wc -l`
CHR_2Y_REST_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/REST/20*SCOUT*gz | wc -l`
CHR_2Y_T1=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/T1/20*gz | wc -l`
CHR_2Y_T1_TFL3D=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/T1/20*TF*gz | wc -l`
CHR_2Y_T1_DSPGR=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/T1/20*DS*gz | wc -l`
CHR_2Y_T1_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/T1/20*SCOUT*gz | wc -l`
CHR_2Y_T1_o=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/T1/o*gz | wc -l`
CHR_2Y_T1_co=`ls CCNC_MRI_3T/CHR/CHR*/2yfu/T1/co*gz | wc -l`

echo CHR 2Y DKI nifti total count: ${CHR_2Y_DKI} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y DKI DKI30D count: ${CHR_2Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y DKI SCOUT count: ${CHR_2Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
check_CHR_2Y_DKI=$(( ${CHR_2Y_DKI_30D} + ${CHR_2Y_DKI_SCOUT} ))
if [ ${check_CHR_2Y_DKI} -eq ${CHR_2Y_DKI} ] ; then
    echo CHR 2Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
else
    echo CHR 2Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
fi

echo CHR 2Y DTI nifti total count: ${CHR_2Y_DTI} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y DTI DTI30D count: ${CHR_2Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y DTI SCOUT count: ${CHR_2Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
check_CHR_2Y_DTI=$(( ${CHR_2Y_DTI_64D} + ${CHR_2Y_DTI_SCOUT} ))
if [ ${check_CHR_2Y_DTI} -eq ${CHR_2Y_DTI} ] ; then
    echo CHR 2Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
else
    echo CHR 2Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
fi

echo CHR 2Y REST nifti total count: ${CHR_2Y_REST} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y REST REST count: ${CHR_2Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y REST SCOUT count: ${CHR_2Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
check_CHR_2Y_REST=$(( ${CHR_2Y_REST_REST} + ${CHR_2Y_REST_SCOUT} ))
if [ ${check_CHR_2Y_REST} -eq ${CHR_2Y_REST} ] ; then
    echo CHR 2Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
else
    echo CHR 2Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
fi

echo CHR 2Y T1 nifti total count: ${CHR_2Y_T1} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y T1 TFL3D count: ${CHR_2Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y T1 DSPGR count: ${CHR_2Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y T1 SCOUT count: ${CHR_2Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y oriented T1 count: ${CHR_2Y_T1_o} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
echo CHR 2Y cropped and oriented T1 count: ${CHR_2Y_T1_co} >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
check_CHR_2Y_T1=$(( ${CHR_2Y_T1_TFL3D} + ${CHR_2Y_T1_DSPGR} + ${CHR_2Y_T1_SCOUT} ))
if [ ${check_CHR_2Y_T1} -eq ${CHR_2Y_T1} ] ; then
    echo CHR 2Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
else
    echo CHR 2Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/CHR_2Y_counts.txt
fi


CHR_FU_4Y_DKI=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/DKI/20*gz | wc -l`
CHR_FU_4Y_DKI_30D=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/DKI/20*30D*gz | wc -l`
CHR_FU_4Y_DKI_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/DKI/20*SCOUT*gz | wc -l`
CHR_FU_4Y_DTI=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/DTI/20*gz | wc -l`
CHR_FU_4Y_DTI_64D=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/DTI/20*64D*gz | wc -l`
CHR_FU_4Y_DTI_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/DTI/20*SCOUT*gz | wc -l`
CHR_FU_4Y_REST=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/REST/20*gz | wc -l`
CHR_FU_4Y_REST_REST=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/REST/20*REST*gz | wc -l`
CHR_FU_4Y_REST_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/REST/20*SCOUT*gz | wc -l`
CHR_FU_4Y_T1=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/T1/20*gz | wc -l`
CHR_FU_4Y_T1_TFL3D=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/T1/20*TF*gz | wc -l`
CHR_FU_4Y_T1_DSPGR=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/T1/20*DS*gz | wc -l`
CHR_FU_4Y_T1_SCOUT=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/T1/20*SCOUT*gz | wc -l`
CHR_FU_4Y_T1_o=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/T1/o*gz | wc -l`
CHR_FU_4Y_T1_co=`ls CCNC_MRI_3T/CHR/CHR*/followUp/4yfu/T1/co*gz | wc -l`

echo CHR FU_4Y DKI nifti total count: ${CHR_FU_4Y_DKI} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y DKI DKI30D count: ${CHR_FU_4Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y DKI SCOUT count: ${CHR_FU_4Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
check_CHR_FU_4Y_DKI=$(( ${CHR_FU_4Y_DKI_30D} + ${CHR_FU_4Y_DKI_SCOUT} ))
if [ ${check_CHR_FU_4Y_DKI} -eq ${CHR_FU_4Y_DKI} ] ; then
    echo CHR FU_4Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
else
    echo CHR FU_4Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
fi

echo CHR FU_4Y DTI nifti total count: ${CHR_FU_4Y_DTI} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y DTI DTI30D count: ${CHR_FU_4Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y DTI SCOUT count: ${CHR_FU_4Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
check_CHR_FU_4Y_DTI=$(( ${CHR_FU_4Y_DTI_64D} + ${CHR_FU_4Y_DTI_SCOUT} ))
if [ ${check_CHR_FU_4Y_DTI} -eq ${CHR_FU_4Y_DTI} ] ; then
    echo CHR FU_4Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
else
    echo CHR FU_4Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
fi

echo CHR FU_4Y REST nifti total count: ${CHR_FU_4Y_REST} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y REST REST count: ${CHR_FU_4Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y REST SCOUT count: ${CHR_FU_4Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
check_CHR_FU_4Y_REST=$(( ${CHR_FU_4Y_REST_REST} + ${CHR_FU_4Y_REST_SCOUT} ))
if [ ${check_CHR_FU_4Y_REST} -eq ${CHR_FU_4Y_REST} ] ; then
    echo CHR FU_4Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
else
    echo CHR FU_4Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
fi

echo CHR FU_4Y T1 nifti total count: ${CHR_FU_4Y_T1} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y T1 TFL3D count: ${CHR_FU_4Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y T1 DSPGR count: ${CHR_FU_4Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y T1 SCOUT count: ${CHR_FU_4Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y oriented T1 count: ${CHR_FU_4Y_T1_o} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
echo CHR FU_4Y cropped and oriented T1 count: ${CHR_FU_4Y_T1_co} >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
check_CHR_FU_4Y_T1=$(( ${CHR_FU_4Y_T1_TFL3D} + ${CHR_FU_4Y_T1_DSPGR} + ${CHR_FU_4Y_T1_SCOUT} ))
if [ ${check_CHR_FU_4Y_T1} -eq ${CHR_FU_4Y_T1} ] ; then
    echo CHR FU_4Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
else
    echo CHR FU_4Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/CHR_FU_4Y_counts.txt
fi


DNO_BL_DKI=`ls CCNC_MRI_3T/DNO/DNO*/baseline/DKI/20*gz | wc -l`
DNO_BL_DKI_30D=`ls CCNC_MRI_3T/DNO/DNO*/baseline/DKI/20*30D*gz | wc -l`
DNO_BL_DKI_SCOUT=`ls CCNC_MRI_3T/DNO/DNO*/baseline/DKI/20*SCOUT*gz | wc -l`
DNO_BL_DTI=`ls CCNC_MRI_3T/DNO/DNO*/baseline/DTI/20*gz | wc -l`
DNO_BL_DTI_64D=`ls CCNC_MRI_3T/DNO/DNO*/baseline/DTI/20*64D*gz | wc -l`
DNO_BL_DTI_SCOUT=`ls CCNC_MRI_3T/DNO/DNO*/baseline/DTI/20*SCOUT*gz | wc -l`
DNO_BL_REST=`ls CCNC_MRI_3T/DNO/DNO*/baseline/REST/20*gz | wc -l`
DNO_BL_REST_REST=`ls CCNC_MRI_3T/DNO/DNO*/baseline/REST/20*REST*gz | wc -l`
DNO_BL_REST_SCOUT=`ls CCNC_MRI_3T/DNO/DNO*/baseline/REST/20*SCOUT*gz | wc -l`
DNO_BL_T1=`ls CCNC_MRI_3T/DNO/DNO*/baseline/T1/20*gz | wc -l`
DNO_BL_T1_TFL3D=`ls CCNC_MRI_3T/DNO/DNO*/baseline/T1/20*TF*gz | wc -l`
DNO_BL_T1_DSPGR=`ls CCNC_MRI_3T/DNO/DNO*/baseline/T1/20*DS*gz | wc -l`
DNO_BL_T1_SCOUT=`ls CCNC_MRI_3T/DNO/DNO*/baseline/T1/20*SCOUT*gz | wc -l`
DNO_BL_T1_o=`ls CCNC_MRI_3T/DNO/DNO*/baseline/T1/o*gz | wc -l`
DNO_BL_T1_co=`ls CCNC_MRI_3T/DNO/DNO*/baseline/T1/co*gz | wc -l`

echo DNO BL DKI nifti total count: ${DNO_BL_DKI} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL DKI DKI30D count: ${DNO_BL_DKI_30D} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL DKI SCOUT count: ${DNO_BL_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
check_DNO_BL_DKI=$(( ${DNO_BL_DKI_30D} + ${DNO_BL_DKI_SCOUT} ))
if [ ${check_DNO_BL_DKI} -eq ${DNO_BL_DKI} ] ; then
    echo DNO BL DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
else
    echo DNO BL DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
fi

echo DNO BL DTI nifti total count: ${DNO_BL_DTI} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL DTI DTI30D count: ${DNO_BL_DTI_64D} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL DTI SCOUT count: ${DNO_BL_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
check_DNO_BL_DTI=$(( ${DNO_BL_DTI_64D} + ${DNO_BL_DTI_SCOUT} ))
if [ ${check_DNO_BL_DTI} -eq ${DNO_BL_DTI} ] ; then
    echo DNO BL DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
else
    echo DNO BL DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
fi

echo DNO BL REST nifti total count: ${DNO_BL_REST} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL REST REST count: ${DNO_BL_REST_REST} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL REST SCOUT count: ${DNO_BL_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
check_DNO_BL_REST=$(( ${DNO_BL_REST_REST} + ${DNO_BL_REST_SCOUT} ))
if [ ${check_DNO_BL_REST} -eq ${DNO_BL_REST} ] ; then
    echo DNO BL REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
else
    echo DNO BL REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
fi

echo DNO BL T1 nifti total count: ${DNO_BL_T1} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL T1 TFL3D count: ${DNO_BL_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL T1 DSPGR count: ${DNO_BL_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL T1 SCOUT count: ${DNO_BL_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL oriented T1 count: ${DNO_BL_T1_o} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
echo DNO BL cropped and oriented T1 count: ${DNO_BL_T1_co} >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
check_DNO_BL_T1=$(( ${DNO_BL_T1_TFL3D} + ${DNO_BL_T1_DSPGR} + ${DNO_BL_T1_SCOUT} ))
if [ ${check_DNO_BL_T1} -eq ${DNO_BL_T1} ] ; then
    echo DNO BL TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
else
    echo DNO BL TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/DNO_BL_counts.txt
fi


DNO_FU_DKI=`ls CCNC_MRI_3T/DNO/DNO*/followUp/DKI/20*gz | wc -l`
DNO_FU_DKI_30D=`ls CCNC_MRI_3T/DNO/DNO*/followUp/DKI/20*30D*gz | wc -l`
DNO_FU_DKI_SCOUT=`ls CCNC_MRI_3T/DNO/DNO*/followUp/DKI/20*SCOUT*gz | wc -l`
DNO_FU_DTI=`ls CCNC_MRI_3T/DNO/DNO*/followUp/DTI/20*gz | wc -l`
DNO_FU_DTI_64D=`ls CCNC_MRI_3T/DNO/DNO*/followUp/DTI/20*64D*gz | wc -l`
DNO_FU_DTI_SCOUT=`ls CCNC_MRI_3T/DNO/DNO*/followUp/DTI/20*SCOUT*gz | wc -l`
DNO_FU_REST=`ls CCNC_MRI_3T/DNO/DNO*/followUp/REST/20*gz | wc -l`
DNO_FU_REST_REST=`ls CCNC_MRI_3T/DNO/DNO*/followUp/REST/20*REST*gz | wc -l`
DNO_FU_REST_SCOUT=`ls CCNC_MRI_3T/DNO/DNO*/followUp/REST/20*SCOUT*gz | wc -l`
DNO_FU_T1=`ls CCNC_MRI_3T/DNO/DNO*/followUp/T1/20*gz | wc -l`
DNO_FU_T1_TFL3D=`ls CCNC_MRI_3T/DNO/DNO*/followUp/T1/20*TF*gz | wc -l`
DNO_FU_T1_DSPGR=`ls CCNC_MRI_3T/DNO/DNO*/followUp/T1/20*DS*gz | wc -l`
DNO_FU_T1_SCOUT=`ls CCNC_MRI_3T/DNO/DNO*/followUp/T1/20*SCOUT*gz | wc -l`
DNO_FU_T1_o=`ls CCNC_MRI_3T/DNO/DNO*/followUp/T1/o*gz | wc -l`
DNO_FU_T1_co=`ls CCNC_MRI_3T/DNO/DNO*/followUp/T1/co*gz | wc -l`

echo DNO FU DKI nifti total count: ${DNO_FU_DKI} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU DKI DKI30D count: ${DNO_FU_DKI_30D} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU DKI SCOUT count: ${DNO_FU_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
check_DNO_FU_DKI=$(( ${DNO_FU_DKI_30D} + ${DNO_FU_DKI_SCOUT} ))
if [ ${check_DNO_FU_DKI} -eq ${DNO_FU_DKI} ] ; then
    echo DNO FU DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
else
    echo DNO FU DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
fi

echo DNO FU DTI nifti total count: ${DNO_FU_DTI} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU DTI DTI30D count: ${DNO_FU_DTI_64D} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU DTI SCOUT count: ${DNO_FU_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
check_DNO_FU_DTI=$(( ${DNO_FU_DTI_64D} + ${DNO_FU_DTI_SCOUT} ))
if [ ${check_DNO_FU_DTI} -eq ${DNO_FU_DTI} ] ; then
    echo DNO FU DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
else
    echo DNO FU DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
fi

echo DNO FU REST nifti total count: ${DNO_FU_REST} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU REST REST count: ${DNO_FU_REST_REST} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU REST SCOUT count: ${DNO_FU_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
check_DNO_FU_REST=$(( ${DNO_FU_REST_REST} + ${DNO_FU_REST_SCOUT} ))
if [ ${check_DNO_FU_REST} -eq ${DNO_FU_REST} ] ; then
    echo DNO FU REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
else
    echo DNO FU REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
fi

echo DNO FU T1 nifti total count: ${DNO_FU_T1} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU T1 TFL3D count: ${DNO_FU_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU T1 DSPGR count: ${DNO_FU_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU T1 SCOUT count: ${DNO_FU_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU oriented T1 count: ${DNO_FU_T1_o} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
echo DNO FU cropped and oriented T1 count: ${DNO_FU_T1_co} >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
check_DNO_FU_T1=$(( ${DNO_FU_T1_TFL3D} + ${DNO_FU_T1_DSPGR} + ${DNO_FU_T1_SCOUT} ))
if [ ${check_DNO_FU_T1} -eq ${DNO_FU_T1} ] ; then
    echo DNO FU TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
else
    echo DNO FU TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/DNO_FU_counts.txt
fi


FEP_BL_DKI=`ls CCNC_MRI_3T/FEP/FEP*/baseline/DKI/20*gz | wc -l`
FEP_BL_DKI_30D=`ls CCNC_MRI_3T/FEP/FEP*/baseline/DKI/20*30D*gz | wc -l`
FEP_BL_DKI_SCOUT=`ls CCNC_MRI_3T/FEP/FEP*/baseline/DKI/20*SCOUT*gz | wc -l`
FEP_BL_DTI=`ls CCNC_MRI_3T/FEP/FEP*/baseline/DTI/20*gz | wc -l`
FEP_BL_DTI_64D=`ls CCNC_MRI_3T/FEP/FEP*/baseline/DTI/20*64D*gz | wc -l`
FEP_BL_DTI_SCOUT=`ls CCNC_MRI_3T/FEP/FEP*/baseline/DTI/20*SCOUT*gz | wc -l`
FEP_BL_REST=`ls CCNC_MRI_3T/FEP/FEP*/baseline/REST/20*gz | wc -l`
FEP_BL_REST_REST=`ls CCNC_MRI_3T/FEP/FEP*/baseline/REST/20*REST*gz | wc -l`
FEP_BL_REST_SCOUT=`ls CCNC_MRI_3T/FEP/FEP*/baseline/REST/20*SCOUT*gz | wc -l`
FEP_BL_T1=`ls CCNC_MRI_3T/FEP/FEP*/baseline/T1/20*gz | wc -l`
FEP_BL_T1_TFL3D=`ls CCNC_MRI_3T/FEP/FEP*/baseline/T1/20*TF*gz | wc -l`
FEP_BL_T1_DSPGR=`ls CCNC_MRI_3T/FEP/FEP*/baseline/T1/20*DS*gz | wc -l`
FEP_BL_T1_SCOUT=`ls CCNC_MRI_3T/FEP/FEP*/baseline/T1/20*SCOUT*gz | wc -l`
FEP_BL_T1_o=`ls CCNC_MRI_3T/FEP/FEP*/baseline/T1/o*gz | wc -l`
FEP_BL_T1_co=`ls CCNC_MRI_3T/FEP/FEP*/baseline/T1/co*gz | wc -l`

echo FEP BL DKI nifti total count: ${FEP_BL_DKI} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL DKI DKI30D count: ${FEP_BL_DKI_30D} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL DKI SCOUT count: ${FEP_BL_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
check_FEP_BL_DKI=$(( ${FEP_BL_DKI_30D} + ${FEP_BL_DKI_SCOUT} ))
if [ ${check_FEP_BL_DKI} -eq ${FEP_BL_DKI} ] ; then
    echo FEP BL DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
else
    echo FEP BL DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
fi

echo FEP BL DTI nifti total count: ${FEP_BL_DTI} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL DTI DTI30D count: ${FEP_BL_DTI_64D} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL DTI SCOUT count: ${FEP_BL_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
check_FEP_BL_DTI=$(( ${FEP_BL_DTI_64D} + ${FEP_BL_DTI_SCOUT} ))
if [ ${check_FEP_BL_DTI} -eq ${FEP_BL_DTI} ] ; then
    echo FEP BL DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
else
    echo FEP BL DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
fi

echo FEP BL REST nifti total count: ${FEP_BL_REST} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL REST REST count: ${FEP_BL_REST_REST} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL REST SCOUT count: ${FEP_BL_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
check_FEP_BL_REST=$(( ${FEP_BL_REST_REST} + ${FEP_BL_REST_SCOUT} ))
if [ ${check_FEP_BL_REST} -eq ${FEP_BL_REST} ] ; then
    echo FEP BL REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
else
    echo FEP BL REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
fi

echo FEP BL T1 nifti total count: ${FEP_BL_T1} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL T1 TFL3D count: ${FEP_BL_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL T1 DSPGR count: ${FEP_BL_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL T1 SCOUT count: ${FEP_BL_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL oriented T1 count: ${FEP_BL_T1_o} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
echo FEP BL cropped and oriented T1 count: ${FEP_BL_T1_co} >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
check_FEP_BL_T1=$(( ${FEP_BL_T1_TFL3D} + ${FEP_BL_T1_DSPGR} + ${FEP_BL_T1_SCOUT} ))
if [ ${check_FEP_BL_T1} -eq ${FEP_BL_T1} ] ; then
    echo FEP BL TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
else
    echo FEP BL TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/FEP_BL_counts.txt
fi


GHR_BL_DKI=`ls CCNC_MRI_3T/GHR/GHR*/baseline/DKI/20*gz | wc -l`
GHR_BL_DKI_30D=`ls CCNC_MRI_3T/GHR/GHR*/baseline/DKI/20*30D*gz | wc -l`
GHR_BL_DKI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/baseline/DKI/20*SCOUT*gz | wc -l`
GHR_BL_DTI=`ls CCNC_MRI_3T/GHR/GHR*/baseline/DTI/20*gz | wc -l`
GHR_BL_DTI_64D=`ls CCNC_MRI_3T/GHR/GHR*/baseline/DTI/20*64D*gz | wc -l`
GHR_BL_DTI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/baseline/DTI/20*SCOUT*gz | wc -l`
GHR_BL_REST=`ls CCNC_MRI_3T/GHR/GHR*/baseline/REST/20*gz | wc -l`
GHR_BL_REST_REST=`ls CCNC_MRI_3T/GHR/GHR*/baseline/REST/20*REST*gz | wc -l`
GHR_BL_REST_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/baseline/REST/20*SCOUT*gz | wc -l`
GHR_BL_T1=`ls CCNC_MRI_3T/GHR/GHR*/baseline/T1/20*gz | wc -l`
GHR_BL_T1_TFL3D=`ls CCNC_MRI_3T/GHR/GHR*/baseline/T1/20*TF*gz | wc -l`
GHR_BL_T1_DSPGR=`ls CCNC_MRI_3T/GHR/GHR*/baseline/T1/20*DS*gz | wc -l`
GHR_BL_T1_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/baseline/T1/20*SCOUT*gz | wc -l`
GHR_BL_T1_o=`ls CCNC_MRI_3T/GHR/GHR*/baseline/T1/o*gz | wc -l`
GHR_BL_T1_co=`ls CCNC_MRI_3T/GHR/GHR*/baseline/T1/co*gz | wc -l`

echo GHR BL DKI nifti total count: ${GHR_BL_DKI} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL DKI DKI30D count: ${GHR_BL_DKI_30D} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL DKI SCOUT count: ${GHR_BL_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
check_GHR_BL_DKI=$(( ${GHR_BL_DKI_30D} + ${GHR_BL_DKI_SCOUT} ))
if [ ${check_GHR_BL_DKI} -eq ${GHR_BL_DKI} ] ; then
    echo GHR BL DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
else
    echo GHR BL DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
fi

echo GHR BL DTI nifti total count: ${GHR_BL_DTI} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL DTI DTI30D count: ${GHR_BL_DTI_64D} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL DTI SCOUT count: ${GHR_BL_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
check_GHR_BL_DTI=$(( ${GHR_BL_DTI_64D} + ${GHR_BL_DTI_SCOUT} ))
if [ ${check_GHR_BL_DTI} -eq ${GHR_BL_DTI} ] ; then
    echo GHR BL DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
else
    echo GHR BL DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
fi

echo GHR BL REST nifti total count: ${GHR_BL_REST} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL REST REST count: ${GHR_BL_REST_REST} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL REST SCOUT count: ${GHR_BL_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
check_GHR_BL_REST=$(( ${GHR_BL_REST_REST} + ${GHR_BL_REST_SCOUT} ))
if [ ${check_GHR_BL_REST} -eq ${GHR_BL_REST} ] ; then
    echo GHR BL REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
else
    echo GHR BL REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
fi

echo GHR BL T1 nifti total count: ${GHR_BL_T1} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL T1 TFL3D count: ${GHR_BL_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL T1 DSPGR count: ${GHR_BL_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL T1 SCOUT count: ${GHR_BL_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL oriented T1 count: ${GHR_BL_T1_o} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
echo GHR BL cropped and oriented T1 count: ${GHR_BL_T1_co} >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
check_GHR_BL_T1=$(( ${GHR_BL_T1_TFL3D} + ${GHR_BL_T1_DSPGR} + ${GHR_BL_T1_SCOUT} ))
if [ ${check_GHR_BL_T1} -eq ${GHR_BL_T1} ] ; then
    echo GHR BL TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
else
    echo GHR BL TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_BL_counts.txt
fi


GHR_FU_2Y_DKI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/DKI/20*gz | wc -l`
GHR_FU_2Y_DKI_30D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/DKI/20*30D*gz | wc -l`
GHR_FU_2Y_DKI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/DKI/20*SCOUT*gz | wc -l`
GHR_FU_2Y_DTI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/DTI/20*gz | wc -l`
GHR_FU_2Y_DTI_64D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/DTI/20*64D*gz | wc -l`
GHR_FU_2Y_DTI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/DTI/20*SCOUT*gz | wc -l`
GHR_FU_2Y_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/REST/20*gz | wc -l`
GHR_FU_2Y_REST_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/REST/20*REST*gz | wc -l`
GHR_FU_2Y_REST_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/REST/20*SCOUT*gz | wc -l`
GHR_FU_2Y_T1=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/T1/20*gz | wc -l`
GHR_FU_2Y_T1_TFL3D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/T1/20*TF*gz | wc -l`
GHR_FU_2Y_T1_DSPGR=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/T1/20*DS*gz | wc -l`
GHR_FU_2Y_T1_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/T1/20*SCOUT*gz | wc -l`
GHR_FU_2Y_T1_o=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/T1/o*gz | wc -l`
GHR_FU_2Y_T1_co=`ls CCNC_MRI_3T/GHR/GHR*/followUp/2yfu/T1/co*gz | wc -l`

echo GHR FU_2Y DKI nifti total count: ${GHR_FU_2Y_DKI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y DKI DKI30D count: ${GHR_FU_2Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y DKI SCOUT count: ${GHR_FU_2Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
check_GHR_FU_2Y_DKI=$(( ${GHR_FU_2Y_DKI_30D} + ${GHR_FU_2Y_DKI_SCOUT} ))
if [ ${check_GHR_FU_2Y_DKI} -eq ${GHR_FU_2Y_DKI} ] ; then
    echo GHR FU_2Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
else
    echo GHR FU_2Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
fi

echo GHR FU_2Y DTI nifti total count: ${GHR_FU_2Y_DTI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y DTI DTI30D count: ${GHR_FU_2Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y DTI SCOUT count: ${GHR_FU_2Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
check_GHR_FU_2Y_DTI=$(( ${GHR_FU_2Y_DTI_64D} + ${GHR_FU_2Y_DTI_SCOUT} ))
if [ ${check_GHR_FU_2Y_DTI} -eq ${GHR_FU_2Y_DTI} ] ; then
    echo GHR FU_2Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
else
    echo GHR FU_2Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
fi

echo GHR FU_2Y REST nifti total count: ${GHR_FU_2Y_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y REST REST count: ${GHR_FU_2Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y REST SCOUT count: ${GHR_FU_2Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
check_GHR_FU_2Y_REST=$(( ${GHR_FU_2Y_REST_REST} + ${GHR_FU_2Y_REST_SCOUT} ))
if [ ${check_GHR_FU_2Y_REST} -eq ${GHR_FU_2Y_REST} ] ; then
    echo GHR FU_2Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
else
    echo GHR FU_2Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
fi

echo GHR FU_2Y T1 nifti total count: ${GHR_FU_2Y_T1} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y T1 TFL3D count: ${GHR_FU_2Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y T1 DSPGR count: ${GHR_FU_2Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y T1 SCOUT count: ${GHR_FU_2Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y oriented T1 count: ${GHR_FU_2Y_T1_o} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
echo GHR FU_2Y cropped and oriented T1 count: ${GHR_FU_2Y_T1_co} >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
check_GHR_FU_2Y_T1=$(( ${GHR_FU_2Y_T1_TFL3D} + ${GHR_FU_2Y_T1_DSPGR} + ${GHR_FU_2Y_T1_SCOUT} ))
if [ ${check_GHR_FU_2Y_T1} -eq ${GHR_FU_2Y_T1} ] ; then
    echo GHR FU_2Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
else
    echo GHR FU_2Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_2Y_counts.txt
fi


GHR_FU_4Y_DKI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/DKI/20*gz | wc -l`
GHR_FU_4Y_DKI_30D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/DKI/20*30D*gz | wc -l`
GHR_FU_4Y_DKI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/DKI/20*SCOUT*gz | wc -l`
GHR_FU_4Y_DTI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/DTI/20*gz | wc -l`
GHR_FU_4Y_DTI_64D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/DTI/20*64D*gz | wc -l`
GHR_FU_4Y_DTI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/DTI/20*SCOUT*gz | wc -l`
GHR_FU_4Y_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/REST/20*gz | wc -l`
GHR_FU_4Y_REST_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/REST/20*REST*gz | wc -l`
GHR_FU_4Y_REST_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/REST/20*SCOUT*gz | wc -l`
GHR_FU_4Y_T1=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/T1/20*gz | wc -l`
GHR_FU_4Y_T1_TFL3D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/T1/20*TF*gz | wc -l`
GHR_FU_4Y_T1_DSPGR=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/T1/20*DS*gz | wc -l`
GHR_FU_4Y_T1_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/T1/20*SCOUT*gz | wc -l`
GHR_FU_4Y_T1_o=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/T1/o*gz | wc -l`
GHR_FU_4Y_T1_co=`ls CCNC_MRI_3T/GHR/GHR*/followUp/4yfu/T1/co*gz | wc -l`

echo GHR FU_4Y DKI nifti total count: ${GHR_FU_4Y_DKI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y DKI DKI30D count: ${GHR_FU_4Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y DKI SCOUT count: ${GHR_FU_4Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
check_GHR_FU_4Y_DKI=$(( ${GHR_FU_4Y_DKI_30D} + ${GHR_FU_4Y_DKI_SCOUT} ))
if [ ${check_GHR_FU_4Y_DKI} -eq ${GHR_FU_4Y_DKI} ] ; then
    echo GHR FU_4Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
else
    echo GHR FU_4Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
fi

echo GHR FU_4Y DTI nifti total count: ${GHR_FU_4Y_DTI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y DTI DTI30D count: ${GHR_FU_4Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y DTI SCOUT count: ${GHR_FU_4Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
check_GHR_FU_4Y_DTI=$(( ${GHR_FU_4Y_DTI_64D} + ${GHR_FU_4Y_DTI_SCOUT} ))
if [ ${check_GHR_FU_4Y_DTI} -eq ${GHR_FU_4Y_DTI} ] ; then
    echo GHR FU_4Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
else
    echo GHR FU_4Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
fi

echo GHR FU_4Y REST nifti total count: ${GHR_FU_4Y_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y REST REST count: ${GHR_FU_4Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y REST SCOUT count: ${GHR_FU_4Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
check_GHR_FU_4Y_REST=$(( ${GHR_FU_4Y_REST_REST} + ${GHR_FU_4Y_REST_SCOUT} ))
if [ ${check_GHR_FU_4Y_REST} -eq ${GHR_FU_4Y_REST} ] ; then
    echo GHR FU_4Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
else
    echo GHR FU_4Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
fi

echo GHR FU_4Y T1 nifti total count: ${GHR_FU_4Y_T1} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y T1 TFL3D count: ${GHR_FU_4Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y T1 DSPGR count: ${GHR_FU_4Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y T1 SCOUT count: ${GHR_FU_4Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y oriented T1 count: ${GHR_FU_4Y_T1_o} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
echo GHR FU_4Y cropped and oriented T1 count: ${GHR_FU_4Y_T1_co} >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
check_GHR_FU_4Y_T1=$(( ${GHR_FU_4Y_T1_TFL3D} + ${GHR_FU_4Y_T1_DSPGR} + ${GHR_FU_4Y_T1_SCOUT} ))
if [ ${check_GHR_FU_4Y_T1} -eq ${GHR_FU_4Y_T1} ] ; then
    echo GHR FU_4Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
else
    echo GHR FU_4Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_4Y_counts.txt
fi


GHR_FU_5Y_DKI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/DKI/20*gz | wc -l`
GHR_FU_5Y_DKI_30D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/DKI/20*30D*gz | wc -l`
GHR_FU_5Y_DKI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/DKI/20*SCOUT*gz | wc -l`
GHR_FU_5Y_DTI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/DTI/20*gz | wc -l`
GHR_FU_5Y_DTI_64D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/DTI/20*64D*gz | wc -l`
GHR_FU_5Y_DTI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/DTI/20*SCOUT*gz | wc -l`
GHR_FU_5Y_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/REST/20*gz | wc -l`
GHR_FU_5Y_REST_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/REST/20*REST*gz | wc -l`
GHR_FU_5Y_REST_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/REST/20*SCOUT*gz | wc -l`
GHR_FU_5Y_T1=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/T1/20*gz | wc -l`
GHR_FU_5Y_T1_TFL3D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/T1/20*TF*gz | wc -l`
GHR_FU_5Y_T1_DSPGR=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/T1/20*DS*gz | wc -l`
GHR_FU_5Y_T1_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/T1/20*SCOUT*gz | wc -l`
GHR_FU_5Y_T1_o=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/T1/o*gz | wc -l`
GHR_FU_5Y_T1_co=`ls CCNC_MRI_3T/GHR/GHR*/followUp/5yfu/T1/co*gz | wc -l`

echo GHR FU_5Y DKI nifti total count: ${GHR_FU_5Y_DKI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y DKI DKI30D count: ${GHR_FU_5Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y DKI SCOUT count: ${GHR_FU_5Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
check_GHR_FU_5Y_DKI=$(( ${GHR_FU_5Y_DKI_30D} + ${GHR_FU_5Y_DKI_SCOUT} ))
if [ ${check_GHR_FU_5Y_DKI} -eq ${GHR_FU_5Y_DKI} ] ; then
    echo GHR FU_5Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
else
    echo GHR FU_5Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
fi

echo GHR FU_5Y DTI nifti total count: ${GHR_FU_5Y_DTI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y DTI DTI30D count: ${GHR_FU_5Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y DTI SCOUT count: ${GHR_FU_5Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
check_GHR_FU_5Y_DTI=$(( ${GHR_FU_5Y_DTI_64D} + ${GHR_FU_5Y_DTI_SCOUT} ))
if [ ${check_GHR_FU_5Y_DTI} -eq ${GHR_FU_5Y_DTI} ] ; then
    echo GHR FU_5Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
else
    echo GHR FU_5Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
fi

echo GHR FU_5Y REST nifti total count: ${GHR_FU_5Y_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y REST REST count: ${GHR_FU_5Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y REST SCOUT count: ${GHR_FU_5Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
check_GHR_FU_5Y_REST=$(( ${GHR_FU_5Y_REST_REST} + ${GHR_FU_5Y_REST_SCOUT} ))
if [ ${check_GHR_FU_5Y_REST} -eq ${GHR_FU_5Y_REST} ] ; then
    echo GHR FU_5Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
else
    echo GHR FU_5Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
fi

echo GHR FU_5Y T1 nifti total count: ${GHR_FU_5Y_T1} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y T1 TFL3D count: ${GHR_FU_5Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y T1 DSPGR count: ${GHR_FU_5Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y T1 SCOUT count: ${GHR_FU_5Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y oriented T1 count: ${GHR_FU_5Y_T1_o} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
echo GHR FU_5Y cropped and oriented T1 count: ${GHR_FU_5Y_T1_co} >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
check_GHR_FU_5Y_T1=$(( ${GHR_FU_5Y_T1_TFL3D} + ${GHR_FU_5Y_T1_DSPGR} + ${GHR_FU_5Y_T1_SCOUT} ))
if [ ${check_GHR_FU_5Y_T1} -eq ${GHR_FU_5Y_T1} ] ; then
    echo GHR FU_5Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
else
    echo GHR FU_5Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_5Y_counts.txt
fi


GHR_FU_6Y_DKI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/DKI/20*gz | wc -l`
GHR_FU_6Y_DKI_30D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/DKI/20*30D*gz | wc -l`
GHR_FU_6Y_DKI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/DKI/20*SCOUT*gz | wc -l`
GHR_FU_6Y_DTI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/DTI/20*gz | wc -l`
GHR_FU_6Y_DTI_64D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/DTI/20*64D*gz | wc -l`
GHR_FU_6Y_DTI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/DTI/20*SCOUT*gz | wc -l`
GHR_FU_6Y_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/REST/20*gz | wc -l`
GHR_FU_6Y_REST_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/REST/20*REST*gz | wc -l`
GHR_FU_6Y_REST_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/REST/20*SCOUT*gz | wc -l`
GHR_FU_6Y_T1=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/T1/20*gz | wc -l`
GHR_FU_6Y_T1_TFL3D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/T1/20*TF*gz | wc -l`
GHR_FU_6Y_T1_DSPGR=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/T1/20*DS*gz | wc -l`
GHR_FU_6Y_T1_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/T1/20*SCOUT*gz | wc -l`
GHR_FU_6Y_T1_o=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/T1/o*gz | wc -l`
GHR_FU_6Y_T1_co=`ls CCNC_MRI_3T/GHR/GHR*/followUp/6yfu/T1/co*gz | wc -l`

echo GHR FU_6Y DKI nifti total count: ${GHR_FU_6Y_DKI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y DKI DKI30D count: ${GHR_FU_6Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y DKI SCOUT count: ${GHR_FU_6Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
check_GHR_FU_6Y_DKI=$(( ${GHR_FU_6Y_DKI_30D} + ${GHR_FU_6Y_DKI_SCOUT} ))
if [ ${check_GHR_FU_6Y_DKI} -eq ${GHR_FU_6Y_DKI} ] ; then
    echo GHR FU_6Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
else
    echo GHR FU_6Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
fi

echo GHR FU_6Y DTI nifti total count: ${GHR_FU_6Y_DTI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y DTI DTI30D count: ${GHR_FU_6Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y DTI SCOUT count: ${GHR_FU_6Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
check_GHR_FU_6Y_DTI=$(( ${GHR_FU_6Y_DTI_64D} + ${GHR_FU_6Y_DTI_SCOUT} ))
if [ ${check_GHR_FU_6Y_DTI} -eq ${GHR_FU_6Y_DTI} ] ; then
    echo GHR FU_6Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
else
    echo GHR FU_6Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
fi

echo GHR FU_6Y REST nifti total count: ${GHR_FU_6Y_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y REST REST count: ${GHR_FU_6Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y REST SCOUT count: ${GHR_FU_6Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
check_GHR_FU_6Y_REST=$(( ${GHR_FU_6Y_REST_REST} + ${GHR_FU_6Y_REST_SCOUT} ))
if [ ${check_GHR_FU_6Y_REST} -eq ${GHR_FU_6Y_REST} ] ; then
    echo GHR FU_6Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
else
    echo GHR FU_6Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
fi

echo GHR FU_6Y T1 nifti total count: ${GHR_FU_6Y_T1} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y T1 TFL3D count: ${GHR_FU_6Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y T1 DSPGR count: ${GHR_FU_6Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y T1 SCOUT count: ${GHR_FU_6Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y oriented T1 count: ${GHR_FU_6Y_T1_o} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
echo GHR FU_6Y cropped and oriented T1 count: ${GHR_FU_6Y_T1_co} >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
check_GHR_FU_6Y_T1=$(( ${GHR_FU_6Y_T1_TFL3D} + ${GHR_FU_6Y_T1_DSPGR} + ${GHR_FU_6Y_T1_SCOUT} ))
if [ ${check_GHR_FU_6Y_T1} -eq ${GHR_FU_6Y_T1} ] ; then
    echo GHR FU_6Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
else
    echo GHR FU_6Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_6Y_counts.txt
fi


GHR_FU_10Y_DKI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/DKI/20*gz | wc -l`
GHR_FU_10Y_DKI_30D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/DKI/20*30D*gz | wc -l`
GHR_FU_10Y_DKI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/DKI/20*SCOUT*gz | wc -l`
GHR_FU_10Y_DTI=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/DTI/20*gz | wc -l`
GHR_FU_10Y_DTI_64D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/DTI/20*64D*gz | wc -l`
GHR_FU_10Y_DTI_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/DTI/20*SCOUT*gz | wc -l`
GHR_FU_10Y_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/REST/20*gz | wc -l`
GHR_FU_10Y_REST_REST=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/REST/20*REST*gz | wc -l`
GHR_FU_10Y_REST_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/REST/20*SCOUT*gz | wc -l`
GHR_FU_10Y_T1=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/T1/20*gz | wc -l`
GHR_FU_10Y_T1_TFL3D=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/T1/20*TF*gz | wc -l`
GHR_FU_10Y_T1_DSPGR=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/T1/20*DS*gz | wc -l`
GHR_FU_10Y_T1_SCOUT=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/T1/20*SCOUT*gz | wc -l`
GHR_FU_10Y_T1_o=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/T1/o*gz | wc -l`
GHR_FU_10Y_T1_co=`ls CCNC_MRI_3T/GHR/GHR*/followUp/10yfu/T1/co*gz | wc -l`

echo GHR FU_10Y DKI nifti total count: ${GHR_FU_10Y_DKI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y DKI DKI30D count: ${GHR_FU_10Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y DKI SCOUT count: ${GHR_FU_10Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
check_GHR_FU_10Y_DKI=$(( ${GHR_FU_10Y_DKI_30D} + ${GHR_FU_10Y_DKI_SCOUT} ))
if [ ${check_GHR_FU_10Y_DKI} -eq ${GHR_FU_10Y_DKI} ] ; then
    echo GHR FU_10Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
else
    echo GHR FU_10Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
fi

echo GHR FU_10Y DTI nifti total count: ${GHR_FU_10Y_DTI} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y DTI DTI30D count: ${GHR_FU_10Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y DTI SCOUT count: ${GHR_FU_10Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
check_GHR_FU_10Y_DTI=$(( ${GHR_FU_10Y_DTI_64D} + ${GHR_FU_10Y_DTI_SCOUT} ))
if [ ${check_GHR_FU_10Y_DTI} -eq ${GHR_FU_10Y_DTI} ] ; then
    echo GHR FU_10Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
else
    echo GHR FU_10Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
fi

echo GHR FU_10Y REST nifti total count: ${GHR_FU_10Y_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y REST REST count: ${GHR_FU_10Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y REST SCOUT count: ${GHR_FU_10Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
check_GHR_FU_10Y_REST=$(( ${GHR_FU_10Y_REST_REST} + ${GHR_FU_10Y_REST_SCOUT} ))
if [ ${check_GHR_FU_10Y_REST} -eq ${GHR_FU_10Y_REST} ] ; then
    echo GHR FU_10Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
else
    echo GHR FU_10Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
fi

echo GHR FU_10Y T1 nifti total count: ${GHR_FU_10Y_T1} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y T1 TFL3D count: ${GHR_FU_10Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y T1 DSPGR count: ${GHR_FU_10Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y T1 SCOUT count: ${GHR_FU_10Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y oriented T1 count: ${GHR_FU_10Y_T1_o} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
echo GHR FU_10Y cropped and oriented T1 count: ${GHR_FU_10Y_T1_co} >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
check_GHR_FU_10Y_T1=$(( ${GHR_FU_10Y_T1_TFL3D} + ${GHR_FU_10Y_T1_DSPGR} + ${GHR_FU_10Y_T1_SCOUT} ))
if [ ${check_GHR_FU_10Y_T1} -eq ${GHR_FU_10Y_T1} ] ; then
    echo GHR FU_10Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
else
    echo GHR FU_10Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/GHR_FU_10Y_counts.txt
fi


NOR_BL_DKI=`ls CCNC_MRI_3T/NOR/NOR*/baseline/DKI/20*gz | wc -l`
NOR_BL_DKI_30D=`ls CCNC_MRI_3T/NOR/NOR*/baseline/DKI/20*30D*gz | wc -l`
NOR_BL_DKI_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/baseline/DKI/20*SCOUT*gz | wc -l`
NOR_BL_DTI=`ls CCNC_MRI_3T/NOR/NOR*/baseline/DTI/20*gz | wc -l`
NOR_BL_DTI_64D=`ls CCNC_MRI_3T/NOR/NOR*/baseline/DTI/20*64D*gz | wc -l`
NOR_BL_DTI_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/baseline/DTI/20*SCOUT*gz | wc -l`
NOR_BL_REST=`ls CCNC_MRI_3T/NOR/NOR*/baseline/REST/20*gz | wc -l`
NOR_BL_REST_REST=`ls CCNC_MRI_3T/NOR/NOR*/baseline/REST/20*REST*gz | wc -l`
NOR_BL_REST_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/baseline/REST/20*SCOUT*gz | wc -l`
NOR_BL_T1=`ls CCNC_MRI_3T/NOR/NOR*/baseline/T1/20*gz | wc -l`
NOR_BL_T1_TFL3D=`ls CCNC_MRI_3T/NOR/NOR*/baseline/T1/20*TF*gz | wc -l`
NOR_BL_T1_DSPGR=`ls CCNC_MRI_3T/NOR/NOR*/baseline/T1/20*DS*gz | wc -l`
NOR_BL_T1_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/baseline/T1/20*SCOUT*gz | wc -l`
NOR_BL_T1_o=`ls CCNC_MRI_3T/NOR/NOR*/baseline/T1/o*gz | wc -l`
NOR_BL_T1_co=`ls CCNC_MRI_3T/NOR/NOR*/baseline/T1/co*gz | wc -l`

echo NOR BL DKI nifti total count: ${NOR_BL_DKI} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL DKI DKI30D count: ${NOR_BL_DKI_30D} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL DKI SCOUT count: ${NOR_BL_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
check_NOR_BL_DKI=$(( ${NOR_BL_DKI_30D} + ${NOR_BL_DKI_SCOUT} ))
if [ ${check_NOR_BL_DKI} -eq ${NOR_BL_DKI} ] ; then
    echo NOR BL DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
else
    echo NOR BL DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
fi

echo NOR BL DTI nifti total count: ${NOR_BL_DTI} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL DTI DTI30D count: ${NOR_BL_DTI_64D} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL DTI SCOUT count: ${NOR_BL_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
check_NOR_BL_DTI=$(( ${NOR_BL_DTI_64D} + ${NOR_BL_DTI_SCOUT} ))
if [ ${check_NOR_BL_DTI} -eq ${NOR_BL_DTI} ] ; then
    echo NOR BL DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
else
    echo NOR BL DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
fi

echo NOR BL REST nifti total count: ${NOR_BL_REST} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL REST REST count: ${NOR_BL_REST_REST} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL REST SCOUT count: ${NOR_BL_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
check_NOR_BL_REST=$(( ${NOR_BL_REST_REST} + ${NOR_BL_REST_SCOUT} ))
if [ ${check_NOR_BL_REST} -eq ${NOR_BL_REST} ] ; then
    echo NOR BL REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
else
    echo NOR BL REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
fi

echo NOR BL T1 nifti total count: ${NOR_BL_T1} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL T1 TFL3D count: ${NOR_BL_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL T1 DSPGR count: ${NOR_BL_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL T1 SCOUT count: ${NOR_BL_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL oriented T1 count: ${NOR_BL_T1_o} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
echo NOR BL cropped and oriented T1 count: ${NOR_BL_T1_co} >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
check_NOR_BL_T1=$(( ${NOR_BL_T1_TFL3D} + ${NOR_BL_T1_DSPGR} + ${NOR_BL_T1_SCOUT} ))
if [ ${check_NOR_BL_T1} -eq ${NOR_BL_T1} ] ; then
    echo NOR BL TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
else
    echo NOR BL TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/NOR_BL_counts.txt
fi


NOR_FU_DKI=`ls CCNC_MRI_3T/NOR/NOR*/followUp/DKI/20*gz | wc -l`
NOR_FU_DKI_30D=`ls CCNC_MRI_3T/NOR/NOR*/followUp/DKI/20*30D*gz | wc -l`
NOR_FU_DKI_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/followUp/DKI/20*SCOUT*gz | wc -l`
NOR_FU_DTI=`ls CCNC_MRI_3T/NOR/NOR*/followUp/DTI/20*gz | wc -l`
NOR_FU_DTI_64D=`ls CCNC_MRI_3T/NOR/NOR*/followUp/DTI/20*64D*gz | wc -l`
NOR_FU_DTI_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/followUp/DTI/20*SCOUT*gz | wc -l`
NOR_FU_REST=`ls CCNC_MRI_3T/NOR/NOR*/followUp/REST/20*gz | wc -l`
NOR_FU_REST_REST=`ls CCNC_MRI_3T/NOR/NOR*/followUp/REST/20*REST*gz | wc -l`
NOR_FU_REST_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/followUp/REST/20*SCOUT*gz | wc -l`
NOR_FU_T1=`ls CCNC_MRI_3T/NOR/NOR*/followUp/T1/20*gz | wc -l`
NOR_FU_T1_TFL3D=`ls CCNC_MRI_3T/NOR/NOR*/followUp/T1/20*TF*gz | wc -l`
NOR_FU_T1_DSPGR=`ls CCNC_MRI_3T/NOR/NOR*/followUp/T1/20*DS*gz | wc -l`
NOR_FU_T1_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/followUp/T1/20*SCOUT*gz | wc -l`
NOR_FU_T1_o=`ls CCNC_MRI_3T/NOR/NOR*/followUp/T1/o*gz | wc -l`
NOR_FU_T1_co=`ls CCNC_MRI_3T/NOR/NOR*/followUp/T1/co*gz | wc -l`

echo NOR FU DKI nifti total count: ${NOR_FU_DKI} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU DKI DKI30D count: ${NOR_FU_DKI_30D} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU DKI SCOUT count: ${NOR_FU_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
check_NOR_FU_DKI=$(( ${NOR_FU_DKI_30D} + ${NOR_FU_DKI_SCOUT} ))
if [ ${check_NOR_FU_DKI} -eq ${NOR_FU_DKI} ] ; then
    echo NOR FU DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
else
    echo NOR FU DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
fi

echo NOR FU DTI nifti total count: ${NOR_FU_DTI} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU DTI DTI30D count: ${NOR_FU_DTI_64D} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU DTI SCOUT count: ${NOR_FU_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
check_NOR_FU_DTI=$(( ${NOR_FU_DTI_64D} + ${NOR_FU_DTI_SCOUT} ))
if [ ${check_NOR_FU_DTI} -eq ${NOR_FU_DTI} ] ; then
    echo NOR FU DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
else
    echo NOR FU DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
fi

echo NOR FU REST nifti total count: ${NOR_FU_REST} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU REST REST count: ${NOR_FU_REST_REST} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU REST SCOUT count: ${NOR_FU_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
check_NOR_FU_REST=$(( ${NOR_FU_REST_REST} + ${NOR_FU_REST_SCOUT} ))
if [ ${check_NOR_FU_REST} -eq ${NOR_FU_REST} ] ; then
    echo NOR FU REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
else
    echo NOR FU REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
fi

echo NOR FU T1 nifti total count: ${NOR_FU_T1} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU T1 TFL3D count: ${NOR_FU_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU T1 DSPGR count: ${NOR_FU_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU T1 SCOUT count: ${NOR_FU_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU oriented T1 count: ${NOR_FU_T1_o} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
echo NOR FU cropped and oriented T1 count: ${NOR_FU_T1_co} >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
check_NOR_FU_T1=$(( ${NOR_FU_T1_TFL3D} + ${NOR_FU_T1_DSPGR} + ${NOR_FU_T1_SCOUT} ))
if [ ${check_NOR_FU_T1} -eq ${NOR_FU_T1} ] ; then
    echo NOR FU TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
else
    echo NOR FU TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/NOR_FU_counts.txt
fi


NOR_2Y_DKI=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/DKI/20*gz | wc -l`
NOR_2Y_DKI_30D=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/DKI/20*30D*gz | wc -l`
NOR_2Y_DKI_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/DKI/20*SCOUT*gz | wc -l`
NOR_2Y_DTI=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/DTI/20*gz | wc -l`
NOR_2Y_DTI_64D=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/DTI/20*64D*gz | wc -l`
NOR_2Y_DTI_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/DTI/20*SCOUT*gz | wc -l`
NOR_2Y_REST=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/REST/20*gz | wc -l`
NOR_2Y_REST_REST=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/REST/20*REST*gz | wc -l`
NOR_2Y_REST_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/REST/20*SCOUT*gz | wc -l`
NOR_2Y_T1=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/T1/20*gz | wc -l`
NOR_2Y_T1_TFL3D=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/T1/20*TF*gz | wc -l`
NOR_2Y_T1_DSPGR=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/T1/20*DS*gz | wc -l`
NOR_2Y_T1_SCOUT=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/T1/20*SCOUT*gz | wc -l`
NOR_2Y_T1_o=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/T1/o*gz | wc -l`
NOR_2Y_T1_co=`ls CCNC_MRI_3T/NOR/NOR*/FollowUp_2y/T1/co*gz | wc -l`

echo NOR 2Y DKI nifti total count: ${NOR_2Y_DKI} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y DKI DKI30D count: ${NOR_2Y_DKI_30D} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y DKI SCOUT count: ${NOR_2Y_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
check_NOR_2Y_DKI=$(( ${NOR_2Y_DKI_30D} + ${NOR_2Y_DKI_SCOUT} ))
if [ ${check_NOR_2Y_DKI} -eq ${NOR_2Y_DKI} ] ; then
    echo NOR 2Y DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
else
    echo NOR 2Y DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
fi

echo NOR 2Y DTI nifti total count: ${NOR_2Y_DTI} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y DTI DTI30D count: ${NOR_2Y_DTI_64D} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y DTI SCOUT count: ${NOR_2Y_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
check_NOR_2Y_DTI=$(( ${NOR_2Y_DTI_64D} + ${NOR_2Y_DTI_SCOUT} ))
if [ ${check_NOR_2Y_DTI} -eq ${NOR_2Y_DTI} ] ; then
    echo NOR 2Y DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
else
    echo NOR 2Y DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
fi

echo NOR 2Y REST nifti total count: ${NOR_2Y_REST} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y REST REST count: ${NOR_2Y_REST_REST} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y REST SCOUT count: ${NOR_2Y_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
check_NOR_2Y_REST=$(( ${NOR_2Y_REST_REST} + ${NOR_2Y_REST_SCOUT} ))
if [ ${check_NOR_2Y_REST} -eq ${NOR_2Y_REST} ] ; then
    echo NOR 2Y REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
else
    echo NOR 2Y REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
fi

echo NOR 2Y T1 nifti total count: ${NOR_2Y_T1} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y T1 TFL3D count: ${NOR_2Y_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y T1 DSPGR count: ${NOR_2Y_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y T1 SCOUT count: ${NOR_2Y_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y oriented T1 count: ${NOR_2Y_T1_o} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
echo NOR 2Y cropped and oriented T1 count: ${NOR_2Y_T1_co} >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
check_NOR_2Y_T1=$(( ${NOR_2Y_T1_TFL3D} + ${NOR_2Y_T1_DSPGR} + ${NOR_2Y_T1_SCOUT} ))
if [ ${check_NOR_2Y_T1} -eq ${NOR_2Y_T1} ] ; then
    echo NOR 2Y TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
else
    echo NOR 2Y TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/NOR_2Y_counts.txt
fi


OCM_BL_DKI=`ls CCNC_MRI_3T/OCM/OCM*/baseline/DKI/20*gz | wc -l`
OCM_BL_DKI_30D=`ls CCNC_MRI_3T/OCM/OCM*/baseline/DKI/20*30D*gz | wc -l`
OCM_BL_DKI_SCOUT=`ls CCNC_MRI_3T/OCM/OCM*/baseline/DKI/20*SCOUT*gz | wc -l`
OCM_BL_DTI=`ls CCNC_MRI_3T/OCM/OCM*/baseline/DTI/20*gz | wc -l`
OCM_BL_DTI_64D=`ls CCNC_MRI_3T/OCM/OCM*/baseline/DTI/20*64D*gz | wc -l`
OCM_BL_DTI_SCOUT=`ls CCNC_MRI_3T/OCM/OCM*/baseline/DTI/20*SCOUT*gz | wc -l`
OCM_BL_REST=`ls CCNC_MRI_3T/OCM/OCM*/baseline/REST/20*gz | wc -l`
OCM_BL_REST_REST=`ls CCNC_MRI_3T/OCM/OCM*/baseline/REST/20*REST*gz | wc -l`
OCM_BL_REST_SCOUT=`ls CCNC_MRI_3T/OCM/OCM*/baseline/REST/20*SCOUT*gz | wc -l`
OCM_BL_T1=`ls CCNC_MRI_3T/OCM/OCM*/baseline/T1/20*gz | wc -l`
OCM_BL_T1_TFL3D=`ls CCNC_MRI_3T/OCM/OCM*/baseline/T1/20*TF*gz | wc -l`
OCM_BL_T1_DSPGR=`ls CCNC_MRI_3T/OCM/OCM*/baseline/T1/20*DS*gz | wc -l`
OCM_BL_T1_SCOUT=`ls CCNC_MRI_3T/OCM/OCM*/baseline/T1/20*SCOUT*gz | wc -l`
OCM_BL_T1_o=`ls CCNC_MRI_3T/OCM/OCM*/baseline/T1/o*gz | wc -l`
OCM_BL_T1_co=`ls CCNC_MRI_3T/OCM/OCM*/baseline/T1/co*gz | wc -l`

echo OCM BL DKI nifti total count: ${OCM_BL_DKI} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL DKI DKI30D count: ${OCM_BL_DKI_30D} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL DKI SCOUT count: ${OCM_BL_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
check_OCM_BL_DKI=$(( ${OCM_BL_DKI_30D} + ${OCM_BL_DKI_SCOUT} ))
if [ ${check_OCM_BL_DKI} -eq ${OCM_BL_DKI} ] ; then
    echo OCM BL DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
else
    echo OCM BL DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
fi

echo OCM BL DTI nifti total count: ${OCM_BL_DTI} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL DTI DTI30D count: ${OCM_BL_DTI_64D} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL DTI SCOUT count: ${OCM_BL_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
check_OCM_BL_DTI=$(( ${OCM_BL_DTI_64D} + ${OCM_BL_DTI_SCOUT} ))
if [ ${check_OCM_BL_DTI} -eq ${OCM_BL_DTI} ] ; then
    echo OCM BL DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
else
    echo OCM BL DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
fi

echo OCM BL REST nifti total count: ${OCM_BL_REST} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL REST REST count: ${OCM_BL_REST_REST} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL REST SCOUT count: ${OCM_BL_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
check_OCM_BL_REST=$(( ${OCM_BL_REST_REST} + ${OCM_BL_REST_SCOUT} ))
if [ ${check_OCM_BL_REST} -eq ${OCM_BL_REST} ] ; then
    echo OCM BL REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
else
    echo OCM BL REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
fi

echo OCM BL T1 nifti total count: ${OCM_BL_T1} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL T1 TFL3D count: ${OCM_BL_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL T1 DSPGR count: ${OCM_BL_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL T1 SCOUT count: ${OCM_BL_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL oriented T1 count: ${OCM_BL_T1_o} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
echo OCM BL cropped and oriented T1 count: ${OCM_BL_T1_co} >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
check_OCM_BL_T1=$(( ${OCM_BL_T1_TFL3D} + ${OCM_BL_T1_DSPGR} + ${OCM_BL_T1_SCOUT} ))
if [ ${check_OCM_BL_T1} -eq ${OCM_BL_T1} ] ; then
    echo OCM BL TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
else
    echo OCM BL TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/OCM_BL_counts.txt
fi


OCM_FU_DKI=`ls CCNC_MRI_3T/OCM/OCM*/followUp/DKI/20*gz | wc -l`
OCM_FU_DKI_30D=`ls CCNC_MRI_3T/OCM/OCM*/followUp/DKI/20*30D*gz | wc -l`
OCM_FU_DKI_SCOUT=`ls CCNC_MRI_3T/OCM/OCM*/followUp/DKI/20*SCOUT*gz | wc -l`
OCM_FU_DTI=`ls CCNC_MRI_3T/OCM/OCM*/followUp/DTI/20*gz | wc -l`
OCM_FU_DTI_64D=`ls CCNC_MRI_3T/OCM/OCM*/followUp/DTI/20*64D*gz | wc -l`
OCM_FU_DTI_SCOUT=`ls CCNC_MRI_3T/OCM/OCM*/followUp/DTI/20*SCOUT*gz | wc -l`
OCM_FU_REST=`ls CCNC_MRI_3T/OCM/OCM*/followUp/REST/20*gz | wc -l`
OCM_FU_REST_REST=`ls CCNC_MRI_3T/OCM/OCM*/followUp/REST/20*REST*gz | wc -l`
OCM_FU_REST_SCOUT=`ls CCNC_MRI_3T/OCM/OCM*/followUp/REST/20*SCOUT*gz | wc -l`
OCM_FU_T1=`ls CCNC_MRI_3T/OCM/OCM*/followUp/T1/20*gz | wc -l`
OCM_FU_T1_TFL3D=`ls CCNC_MRI_3T/OCM/OCM*/followUp/T1/20*TF*gz | wc -l`
OCM_FU_T1_DSPGR=`ls CCNC_MRI_3T/OCM/OCM*/followUp/T1/20*DS*gz | wc -l`
OCM_FU_T1_SCOUT=`ls CCNC_MRI_3T/OCM/OCM*/followUp/T1/20*SCOUT*gz | wc -l`
OCM_FU_T1_o=`ls CCNC_MRI_3T/OCM/OCM*/followUp/T1/o*gz | wc -l`
OCM_FU_T1_co=`ls CCNC_MRI_3T/OCM/OCM*/followUp/T1/co*gz | wc -l`

echo OCM FU DKI nifti total count: ${OCM_FU_DKI} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU DKI DKI30D count: ${OCM_FU_DKI_30D} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU DKI SCOUT count: ${OCM_FU_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
check_OCM_FU_DKI=$(( ${OCM_FU_DKI_30D} + ${OCM_FU_DKI_SCOUT} ))
if [ ${check_OCM_FU_DKI} -eq ${OCM_FU_DKI} ] ; then
    echo OCM FU DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
else
    echo OCM FU DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
fi

echo OCM FU DTI nifti total count: ${OCM_FU_DTI} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU DTI DTI30D count: ${OCM_FU_DTI_64D} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU DTI SCOUT count: ${OCM_FU_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
check_OCM_FU_DTI=$(( ${OCM_FU_DTI_64D} + ${OCM_FU_DTI_SCOUT} ))
if [ ${check_OCM_FU_DTI} -eq ${OCM_FU_DTI} ] ; then
    echo OCM FU DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
else
    echo OCM FU DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
fi

echo OCM FU REST nifti total count: ${OCM_FU_REST} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU REST REST count: ${OCM_FU_REST_REST} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU REST SCOUT count: ${OCM_FU_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
check_OCM_FU_REST=$(( ${OCM_FU_REST_REST} + ${OCM_FU_REST_SCOUT} ))
if [ ${check_OCM_FU_REST} -eq ${OCM_FU_REST} ] ; then
    echo OCM FU REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
else
    echo OCM FU REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
fi

echo OCM FU T1 nifti total count: ${OCM_FU_T1} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU T1 TFL3D count: ${OCM_FU_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU T1 DSPGR count: ${OCM_FU_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU T1 SCOUT count: ${OCM_FU_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU oriented T1 count: ${OCM_FU_T1_o} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
echo OCM FU cropped and oriented T1 count: ${OCM_FU_T1_co} >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
check_OCM_FU_T1=$(( ${OCM_FU_T1_TFL3D} + ${OCM_FU_T1_DSPGR} + ${OCM_FU_T1_SCOUT} ))
if [ ${check_OCM_FU_T1} -eq ${OCM_FU_T1} ] ; then
    echo OCM FU TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
else
    echo OCM FU TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/OCM_FU_counts.txt
fi


SPR_BL_DKI=`ls CCNC_MRI_3T/SPR/SPR*/baseline/DKI/20*gz | wc -l`
SPR_BL_DKI_30D=`ls CCNC_MRI_3T/SPR/SPR*/baseline/DKI/20*30D*gz | wc -l`
SPR_BL_DKI_SCOUT=`ls CCNC_MRI_3T/SPR/SPR*/baseline/DKI/20*SCOUT*gz | wc -l`
SPR_BL_DTI=`ls CCNC_MRI_3T/SPR/SPR*/baseline/DTI/20*gz | wc -l`
SPR_BL_DTI_64D=`ls CCNC_MRI_3T/SPR/SPR*/baseline/DTI/20*64D*gz | wc -l`
SPR_BL_DTI_SCOUT=`ls CCNC_MRI_3T/SPR/SPR*/baseline/DTI/20*SCOUT*gz | wc -l`
SPR_BL_REST=`ls CCNC_MRI_3T/SPR/SPR*/baseline/REST/20*gz | wc -l`
SPR_BL_REST_REST=`ls CCNC_MRI_3T/SPR/SPR*/baseline/REST/20*REST*gz | wc -l`
SPR_BL_REST_SCOUT=`ls CCNC_MRI_3T/SPR/SPR*/baseline/REST/20*SCOUT*gz | wc -l`
SPR_BL_T1=`ls CCNC_MRI_3T/SPR/SPR*/baseline/T1/20*gz | wc -l`
SPR_BL_T1_TFL3D=`ls CCNC_MRI_3T/SPR/SPR*/baseline/T1/20*TF*gz | wc -l`
SPR_BL_T1_DSPGR=`ls CCNC_MRI_3T/SPR/SPR*/baseline/T1/20*DS*gz | wc -l`
SPR_BL_T1_SCOUT=`ls CCNC_MRI_3T/SPR/SPR*/baseline/T1/20*SCOUT*gz | wc -l`
SPR_BL_T1_o=`ls CCNC_MRI_3T/SPR/SPR*/baseline/T1/o*gz | wc -l`
SPR_BL_T1_co=`ls CCNC_MRI_3T/SPR/SPR*/baseline/T1/co*gz | wc -l`

echo SPR BL DKI nifti total count: ${SPR_BL_DKI} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL DKI DKI30D count: ${SPR_BL_DKI_30D} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL DKI SCOUT count: ${SPR_BL_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
check_SPR_BL_DKI=$(( ${SPR_BL_DKI_30D} + ${SPR_BL_DKI_SCOUT} ))
if [ ${check_SPR_BL_DKI} -eq ${SPR_BL_DKI} ] ; then
    echo SPR BL DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
else
    echo SPR BL DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
fi

echo SPR BL DTI nifti total count: ${SPR_BL_DTI} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL DTI DTI30D count: ${SPR_BL_DTI_64D} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL DTI SCOUT count: ${SPR_BL_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
check_SPR_BL_DTI=$(( ${SPR_BL_DTI_64D} + ${SPR_BL_DTI_SCOUT} ))
if [ ${check_SPR_BL_DTI} -eq ${SPR_BL_DTI} ] ; then
    echo SPR BL DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
else
    echo SPR BL DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
fi

echo SPR BL REST nifti total count: ${SPR_BL_REST} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL REST REST count: ${SPR_BL_REST_REST} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL REST SCOUT count: ${SPR_BL_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
check_SPR_BL_REST=$(( ${SPR_BL_REST_REST} + ${SPR_BL_REST_SCOUT} ))
if [ ${check_SPR_BL_REST} -eq ${SPR_BL_REST} ] ; then
    echo SPR BL REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
else
    echo SPR BL REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
fi

echo SPR BL T1 nifti total count: ${SPR_BL_T1} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL T1 TFL3D count: ${SPR_BL_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL T1 DSPGR count: ${SPR_BL_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL T1 SCOUT count: ${SPR_BL_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL oriented T1 count: ${SPR_BL_T1_o} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
echo SPR BL cropped and oriented T1 count: ${SPR_BL_T1_co} >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
check_SPR_BL_T1=$(( ${SPR_BL_T1_TFL3D} + ${SPR_BL_T1_DSPGR} + ${SPR_BL_T1_SCOUT} ))
if [ ${check_SPR_BL_T1} -eq ${SPR_BL_T1} ] ; then
    echo SPR BL TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
else
    echo SPR BL TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt
fi

echo CHR_fifty_one_KMR BL DKI, DTI, REST, and T1, EXISTS IN SPR DIRECTORY >> CCNC_MRI_3T/counts_20180517/SPR_BL_counts.txt


UMO_BL_DKI=`ls CCNC_MRI_3T/UMO/UMO*/baseline/DKI/20*gz | wc -l`
UMO_BL_DKI_30D=`ls CCNC_MRI_3T/UMO/UMO*/baseline/DKI/20*30D*gz | wc -l`
UMO_BL_DKI_SCOUT=`ls CCNC_MRI_3T/UMO/UMO*/baseline/DKI/20*SCOUT*gz | wc -l`
UMO_BL_DTI=`ls CCNC_MRI_3T/UMO/UMO*/baseline/DTI/20*gz | wc -l`
UMO_BL_DTI_64D=`ls CCNC_MRI_3T/UMO/UMO*/baseline/DTI/20*64D*gz | wc -l`
UMO_BL_DTI_SCOUT=`ls CCNC_MRI_3T/UMO/UMO*/baseline/DTI/20*SCOUT*gz | wc -l`
UMO_BL_REST=`ls CCNC_MRI_3T/UMO/UMO*/baseline/REST/20*gz | wc -l`
UMO_BL_REST_REST=`ls CCNC_MRI_3T/UMO/UMO*/baseline/REST/20*REST*gz | wc -l`
UMO_BL_REST_SCOUT=`ls CCNC_MRI_3T/UMO/UMO*/baseline/REST/20*SCOUT*gz | wc -l`
UMO_BL_T1=`ls CCNC_MRI_3T/UMO/UMO*/baseline/T1/20*gz | wc -l`
UMO_BL_T1_TFL3D=`ls CCNC_MRI_3T/UMO/UMO*/baseline/T1/20*TF*gz | wc -l`
UMO_BL_T1_DSPGR=`ls CCNC_MRI_3T/UMO/UMO*/baseline/T1/20*DS*gz | wc -l`
UMO_BL_T1_SCOUT=`ls CCNC_MRI_3T/UMO/UMO*/baseline/T1/20*SCOUT*gz | wc -l`
UMO_BL_T1_o=`ls CCNC_MRI_3T/UMO/UMO*/baseline/T1/o*gz | wc -l`
UMO_BL_T1_co=`ls CCNC_MRI_3T/UMO/UMO*/baseline/T1/co*gz | wc -l`

echo UMO BL DKI nifti total count: ${UMO_BL_DKI} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL DKI DKI30D count: ${UMO_BL_DKI_30D} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL DKI SCOUT count: ${UMO_BL_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
check_UMO_BL_DKI=$(( ${UMO_BL_DKI_30D} + ${UMO_BL_DKI_SCOUT} ))
if [ ${check_UMO_BL_DKI} -eq ${UMO_BL_DKI} ] ; then
    echo UMO BL DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
else
    echo UMO BL DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
fi

echo UMO BL DTI nifti total count: ${UMO_BL_DTI} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL DTI DTI30D count: ${UMO_BL_DTI_64D} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL DTI SCOUT count: ${UMO_BL_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
check_UMO_BL_DTI=$(( ${UMO_BL_DTI_64D} + ${UMO_BL_DTI_SCOUT} ))
if [ ${check_UMO_BL_DTI} -eq ${UMO_BL_DTI} ] ; then
    echo UMO BL DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
else
    echo UMO BL DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
fi

echo UMO BL REST nifti total count: ${UMO_BL_REST} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL REST REST count: ${UMO_BL_REST_REST} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL REST SCOUT count: ${UMO_BL_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
check_UMO_BL_REST=$(( ${UMO_BL_REST_REST} + ${UMO_BL_REST_SCOUT} ))
if [ ${check_UMO_BL_REST} -eq ${UMO_BL_REST} ] ; then
    echo UMO BL REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
else
    echo UMO BL REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
fi

echo UMO BL T1 nifti total count: ${UMO_BL_T1} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL T1 TFL3D count: ${UMO_BL_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL T1 DSPGR count: ${UMO_BL_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL T1 SCOUT count: ${UMO_BL_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL oriented T1 count: ${UMO_BL_T1_o} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
echo UMO BL cropped and oriented T1 count: ${UMO_BL_T1_co} >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
check_UMO_BL_T1=$(( ${UMO_BL_T1_TFL3D} + ${UMO_BL_T1_DSPGR} + ${UMO_BL_T1_SCOUT} ))
if [ ${check_UMO_BL_T1} -eq ${UMO_BL_T1} ] ; then
    echo UMO BL TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
else
    echo UMO BL TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/UMO_BL_counts.txt
fi


UMO_FU_DKI=`ls CCNC_MRI_3T/UMO/UMO*/followUp/DKI/20*gz | wc -l`
UMO_FU_DKI_30D=`ls CCNC_MRI_3T/UMO/UMO*/followUp/DKI/20*30D*gz | wc -l`
UMO_FU_DKI_SCOUT=`ls CCNC_MRI_3T/UMO/UMO*/followUp/DKI/20*SCOUT*gz | wc -l`
UMO_FU_DTI=`ls CCNC_MRI_3T/UMO/UMO*/followUp/DTI/20*gz | wc -l`
UMO_FU_DTI_64D=`ls CCNC_MRI_3T/UMO/UMO*/followUp/DTI/20*64D*gz | wc -l`
UMO_FU_DTI_SCOUT=`ls CCNC_MRI_3T/UMO/UMO*/followUp/DTI/20*SCOUT*gz | wc -l`
UMO_FU_REST=`ls CCNC_MRI_3T/UMO/UMO*/followUp/REST/20*gz | wc -l`
UMO_FU_REST_REST=`ls CCNC_MRI_3T/UMO/UMO*/followUp/REST/20*REST*gz | wc -l`
UMO_FU_REST_SCOUT=`ls CCNC_MRI_3T/UMO/UMO*/followUp/REST/20*SCOUT*gz | wc -l`
UMO_FU_T1=`ls CCNC_MRI_3T/UMO/UMO*/followUp/T1/20*gz | wc -l`
UMO_FU_T1_TFL3D=`ls CCNC_MRI_3T/UMO/UMO*/followUp/T1/20*TF*gz | wc -l`
UMO_FU_T1_DSPGR=`ls CCNC_MRI_3T/UMO/UMO*/followUp/T1/20*DS*gz | wc -l`
UMO_FU_T1_SCOUT=`ls CCNC_MRI_3T/UMO/UMO*/followUp/T1/20*SCOUT*gz | wc -l`
UMO_FU_T1_o=`ls CCNC_MRI_3T/UMO/UMO*/followUp/T1/o*gz | wc -l`
UMO_FU_T1_co=`ls CCNC_MRI_3T/UMO/UMO*/followUp/T1/co*gz | wc -l`

echo UMO FU DKI nifti total count: ${UMO_FU_DKI} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU DKI DKI30D count: ${UMO_FU_DKI_30D} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU DKI SCOUT count: ${UMO_FU_DKI_SCOUT} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
check_UMO_FU_DKI=$(( ${UMO_FU_DKI_30D} + ${UMO_FU_DKI_SCOUT} ))
if [ ${check_UMO_FU_DKI} -eq ${UMO_FU_DKI} ] ; then
    echo UMO FU DKI30D count + SCOUT count IS Total DKI count >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
else
    echo UMO FU DKI30D count + SCOUT count IS NOT Total DKI count >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
fi

echo UMO FU DTI nifti total count: ${UMO_FU_DTI} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU DTI DTI30D count: ${UMO_FU_DTI_64D} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU DTI SCOUT count: ${UMO_FU_DTI_SCOUT} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
check_UMO_FU_DTI=$(( ${UMO_FU_DTI_64D} + ${UMO_FU_DTI_SCOUT} ))
if [ ${check_UMO_FU_DTI} -eq ${UMO_FU_DTI} ] ; then
    echo UMO FU DTI64D count + SCOUT count IS Total DTI count >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
else
    echo UMO FU DTI64D count + SCOUT count IS NOT Total DTI count >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
fi

echo UMO FU REST nifti total count: ${UMO_FU_REST} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU REST REST count: ${UMO_FU_REST_REST} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU REST SCOUT count: ${UMO_FU_REST_SCOUT} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
check_UMO_FU_REST=$(( ${UMO_FU_REST_REST} + ${UMO_FU_REST_SCOUT} ))
if [ ${check_UMO_FU_REST} -eq ${UMO_FU_REST} ] ; then
    echo UMO FU REST count + SCOUT count IS Total REST count >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
else
    echo UMO FU REST count + SCOUT count IS NOT Total REST count >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
fi

echo UMO FU T1 nifti total count: ${UMO_FU_T1} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU T1 TFL3D count: ${UMO_FU_T1_TFL3D} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU T1 DSPGR count: ${UMO_FU_T1_DSPGR} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU T1 SCOUT count: ${UMO_FU_T1_SCOUT} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU oriented T1 count: ${UMO_FU_T1_o} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
echo UMO FU cropped and oriented T1 count: ${UMO_FU_T1_co} >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
check_UMO_FU_T1=$(( ${UMO_FU_T1_TFL3D} + ${UMO_FU_T1_DSPGR} + ${UMO_FU_T1_SCOUT} ))
if [ ${check_UMO_FU_T1} -eq ${UMO_FU_T1} ] ; then
    echo UMO FU TFL3D count + DSPGR count + SCOUT count IS Total T1 count >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
else
    echo UMO FU TFL3D count + DSPGR count + SCOUT count IS NOT Total T1 count >> CCNC_MRI_3T/counts_20180517/UMO_FU_counts.txt
fi


