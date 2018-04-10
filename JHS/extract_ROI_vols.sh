#mkdir ROI_vols

#for i in [FN]*
#do
		
#	fslstats ${i}/baseline/T1/L_AD_T1.nii.gz -V >> ROI_vols/L_AD_vol.txt
#	fslstats ${i}/baseline/T1/L_AM_T1.nii.gz -V >> ROI_vols/L_AM_vol.txt
#	fslstats ${i}/baseline/T1/L_AV_T1.nii.gz -V >> ROI_vols/L_AV_vol.txt
#	fslstats ${i}/baseline/T1/L_CL_T1.nii.gz -V >> ROI_vols/L_CL_vol.txt
#	fslstats ${i}/baseline/T1/L_CM_T1.nii.gz -V >> ROI_vols/L_CM_vol.txt
#	fslstats ${i}/baseline/T1/L_CeM_T1.nii.gz -V >> ROI_vols/L_CeM_vol.txt
#	fslstats ${i}/baseline/T1/L_Hb_T1.nii.gz -V >> ROI_vols/L_Hb_vol.txt
#	fslstats ${i}/baseline/T1/L_LD_T1.nii.gz -V >> ROI_vols/L_LD_vol.txt
#	fslstats ${i}/baseline/T1/L_LGNmc_T1.nii.gz -V >> ROI_vols/L_LGNmc_vol.txt
#	fslstats ${i}/baseline/T1/L_LGNpc_T1.nii.gz -V >> ROI_vols/L_LGNpc_vol.txt
#	fslstats ${i}/baseline/T1/L_LP_T1.nii.gz -V >> ROI_vols/L_LP_vol.txt
#	fslstats ${i}/baseline/T1/L_Li_T1.nii.gz -V >> ROI_vols/L_Li_vol.txt
#	fslstats ${i}/baseline/T1/L_MDmc_T1.nii.gz -V >> ROI_vols/L_MDmc_vol.txt
#	fslstats ${i}/baseline/T1/L_MDpc_T1.nii.gz -V >> ROI_vols/L_MDpc_vol.txt
#	fslstats ${i}/baseline/T1/L_MGN_T1.nii.gz -V >> ROI_vols/L_MGN_vol.txt
#	fslstats ${i}/baseline/T1/L_MV_T1.nii.gz -V >> ROI_vols/L_MV_vol.txt
#	fslstats ${i}/baseline/T1/L_Pf_T1.nii.gz -V >> ROI_vols/L_Pf_vol.txt
#	fslstats ${i}/baseline/T1/L_Po_T1.nii.gz -V >> ROI_vols/L_Po_vol.txt
#	fslstats ${i}/baseline/T1/L_PuA_T1.nii.gz -V >> ROI_vols/L_PuA_vol.txt
#	fslstats ${i}/baseline/T1/L_PuI_T1.nii.gz -V >> ROI_vols/L_PuI_vol.txt
#	fslstats ${i}/baseline/T1/L_PuL_T1.nii.gz -V >> ROI_vols/L_PuL_vol.txt
#	fslstats ${i}/baseline/T1/L_PuM_T1.nii.gz -V >> ROI_vols/L_PuM_vol.txt
#	fslstats ${i}/baseline/T1/L_Pv_T1.nii.gz -V >> ROI_vols/L_Pv_vol.txt
#	fslstats ${i}/baseline/T1/L_RN_T1.nii.gz -V >> ROI_vols/L_RN_vol.txt
#	fslstats ${i}/baseline/T1/L_SG_T1.nii.gz -V >> ROI_vols/L_SG_vol.txt
#	fslstats ${i}/baseline/T1/L_STh_T1.nii.gz -V >> ROI_vols/L_STh_vol.txt
#	fslstats ${i}/baseline/T1/L_VAmc_T1.nii.gz -V >> ROI_vols/L_VAmc_vol.txt
#	fslstats ${i}/baseline/T1/L_VApc_T1.nii.gz -V >> ROI_vols/L_VApc_vol.txt
#	fslstats ${i}/baseline/T1/L_VLa_T1.nii.gz -V >> ROI_vols/L_VLa_vol.txt
#	fslstats ${i}/baseline/T1/L_VLpd_T1.nii.gz -V >> ROI_vols/L_VLpd_vol.txt
#	fslstats ${i}/baseline/T1/L_VLpv_T1.nii.gz -V >> ROI_vols/L_VLpv_vol.txt
#	fslstats ${i}/baseline/T1/L_VM_T1.nii.gz -V >> ROI_vols/L_VM_vol.txt
#	fslstats ${i}/baseline/T1/L_VPI_T1.nii.gz -V >> ROI_vols/L_VPI_vol.txt
#	fslstats ${i}/baseline/T1/L_VPLa_T1.nii.gz -V >> ROI_vols/L_VPLa_vol.txt
#	fslstats ${i}/baseline/T1/L_VPLp_T1.nii.gz -V >> ROI_vols/L_VPLp_vol.txt
#	fslstats ${i}/baseline/T1/L_VPM_T1.nii.gz -V >> ROI_vols/L_VPM_vol.txt
#	fslstats ${i}/baseline/T1/L_sPf_T1.nii.gz -V >> ROI_vols/L_sPf_vol.txt
#
#	fslstats ${i}/baseline/T1/R_AD_T1.nii.gz -V >> ROI_vols/R_AD_vol.txt
#	fslstats ${i}/baseline/T1/R_AM_T1.nii.gz -V >> ROI_vols/R_AM_vol.txt
#	fslstats ${i}/baseline/T1/R_AV_T1.nii.gz -V >> ROI_vols/R_AV_vol.txt
#	fslstats ${i}/baseline/T1/R_CL_T1.nii.gz -V >> ROI_vols/R_CL_vol.txt
#	fslstats ${i}/baseline/T1/R_CM_T1.nii.gz -V >> ROI_vols/R_CM_vol.txt
#	fslstats ${i}/baseline/T1/R_CeM_T1.nii.gz -V >> ROI_vols/R_CeM_vol.txt
#	fslstats ${i}/baseline/T1/R_Hb_T1.nii.gz -V >> ROI_vols/R_Hb_vol.txt
#	fslstats ${i}/baseline/T1/R_LD_T1.nii.gz -V >> ROI_vols/R_LD_vol.txt
#	fslstats ${i}/baseline/T1/R_LGNmc_T1.nii.gz -V >> ROI_vols/R_LGNmc_vol.txt
#	fslstats ${i}/baseline/T1/R_LGNpc_T1.nii.gz -V >> ROI_vols/R_LGNpc_vol.txt
#	fslstats ${i}/baseline/T1/R_LP_T1.nii.gz -V >> ROI_vols/R_LP_vol.txt
#	fslstats ${i}/baseline/T1/R_Li_T1.nii.gz -V >> ROI_vols/R_Li_vol.txt
#	fslstats ${i}/baseline/T1/R_MDmc_T1.nii.gz -V >> ROI_vols/R_MDmc_vol.txt
#	fslstats ${i}/baseline/T1/R_MDpc_T1.nii.gz -V >> ROI_vols/R_MDpc_vol.txt
#	fslstats ${i}/baseline/T1/R_MGN_T1.nii.gz -V >> ROI_vols/R_MGN_vol.txt
#	fslstats ${i}/baseline/T1/R_MV_T1.nii.gz -V >> ROI_vols/R_MV_vol.txt
#	fslstats ${i}/baseline/T1/R_Pf_T1.nii.gz -V >> ROI_vols/R_Pf_vol.txt
#	fslstats ${i}/baseline/T1/R_Po_T1.nii.gz -V >> ROI_vols/R_Po_vol.txt
#	fslstats ${i}/baseline/T1/R_PuA_T1.nii.gz -V >> ROI_vols/R_PuA_vol.txt
#	fslstats ${i}/baseline/T1/R_PuI_T1.nii.gz -V >> ROI_vols/R_PuI_vol.txt
#	fslstats ${i}/baseline/T1/R_PuL_T1.nii.gz -V >> ROI_vols/R_PuL_vol.txt
#	fslstats ${i}/baseline/T1/R_PuM_T1.nii.gz -V >> ROI_vols/R_PuM_vol.txt
#	fslstats ${i}/baseline/T1/R_Pv_T1.nii.gz -V >> ROI_vols/R_Pv_vol.txt
#	fslstats ${i}/baseline/T1/R_RN_T1.nii.gz -V >> ROI_vols/R_RN_vol.txt
#	fslstats ${i}/baseline/T1/R_SG_T1.nii.gz -V >> ROI_vols/R_SG_vol.txt
#	fslstats ${i}/baseline/T1/R_STh_T1.nii.gz -V >> ROI_vols/R_STh_vol.txt
#	fslstats ${i}/baseline/T1/R_VAmc_T1.nii.gz -V >> ROI_vols/R_VAmc_vol.txt
#	fslstats ${i}/baseline/T1/R_VApc_T1.nii.gz -V >> ROI_vols/R_VApc_vol.txt
#	fslstats ${i}/baseline/T1/R_VLa_T1.nii.gz -V >> ROI_vols/R_VLa_vol.txt
#	fslstats ${i}/baseline/T1/R_VLpd_T1.nii.gz -V >> ROI_vols/R_VLpd_vol.txt
#	fslstats ${i}/baseline/T1/R_VLpv_T1.nii.gz -V >> ROI_vols/R_VLpv_vol.txt
#	fslstats ${i}/baseline/T1/R_VM_T1.nii.gz -V >> ROI_vols/R_VM_vol.txt
#	fslstats ${i}/baseline/T1/R_VPI_T1.nii.gz -V >> ROI_vols/R_VPI_vol.txt
#	fslstats ${i}/baseline/T1/R_VPLa_T1.nii.gz -V >> ROI_vols/R_VPLa_vol.txt
#	fslstats ${i}/baseline/T1/R_VPLp_T1.nii.gz -V >> ROI_vols/R_VPLp_vol.txt
#	fslstats ${i}/baseline/T1/R_VPM_T1.nii.gz -V >> ROI_vols/R_VPM_vol.txt
#	fslstats ${i}/baseline/T1/R_sPf_T1.nii.gz -V >> ROI_vols/R_sPf_vol.txt

#done

cd ROI_vols
for txt in *
do

	awk '{$1 = $1 "\t"; print}' ${txt} > tab_${txt}
done


