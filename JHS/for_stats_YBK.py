import pandas as pd

L = pd.read_csv('L_counts.csv')
Left = pd.read_csv('Left_counts.csv')
R = pd.read_csv('R_counts.csv')
Right = pd.read_csv('Right_counts.csv')
#L.shape 	(80, 22)
#Left.shape 	(80, 82)
#R.shape 	(80, 20)
#Right.shape 	(80, 51)

a = pd.merge(pd.merge(pd.merge(L,R,on='Subject'),Left,on='Subject'),Right,on='Subject')
#a.shape 	(80, 172)
a.to_csv('ALL_counts.csv')

b = pd.read_csv('ALL_counts.csv')
#b.shape 	(80, 173)
b.columns[b.isna().any()].tolist()
#len(b.columns[b.isna().any()].tolist()) 	60
b.columns[b.isnull().any()].tolist()
#len(b.columns[b.isnull().any()].tolist()) 	60


b_L = b[b.filter(regex='L_').columns]
b_R = b[b.filter(regex='R_').columns]
b_Left = b[b.filter(regex='Left').columns]
b_Right = b[b.filter(regex='Right').columns]

subj_list = b[['Subject']]

#Left_total_count = b[['Left_morel']]
#Right_total_count = b[['Right_morel']]

Left_morel = b.pop('Left_morel')
LeftThalROI_divBy_LeftMorelTotal = b_Left.div(Left_morel, axis=0)
LeftThalROI_divBy_LeftMorelTotal = pd.concat([subj_list, LeftThalROI_divBy_LeftMorelTotal], axis=1)
RightThalROI_divBy_LeftMorelTotal = b_Right.div(Left_morel, axis=0)
RightThalROI_divBy_LeftMorelTotal = pd.concat([subj_list, RightThalROI_divBy_LeftMorelTotal], axis=1)

Right_morel = b.pop('Right_morel')
LeftThalROI_divBy_RightMorelTotal = b_Left.div(Right_morel, axis=0)
LeftThalROI_divBy_RightMorelTotal = pd.concat([subj_list, LeftThalROI_divBy_RightMorelTotal], axis=1)
RightThalROI_divBy_RightMorelTotal = b_Right.div(Right_morel, axis=0)
RightThalROI_divBy_RightMorelTotal = pd.concat([subj_list, RightThalROI_divBy_RightMorelTotal], axis=1)


LeftThalROI_divBy_LeftMorelTotal.to_csv('LeftThal_divBy_LeftMorelTotal.csv')
RightThalROI_divBy_LeftMorelTotal.to_csv('RightThal_divBy_LeftMorelTotal.csv')
LeftThalROI_divBy_RightMorelTotal.to_csv('LeftThal_divBy_RightMorelTotal.csv')
RightThalROI_divBy_RightMorelTotal.to_csv('RightThal_divBy_RightMorelTotal.csv')


LL = pd.read_csv('LeftThal_divBy_LeftMorelTotal.csv')
LR = pd.read_csv('LeftThal_divBy_RightMorelTotal.csv')
RL = pd.read_csv('RightThal_divBy_LeftMorelTotal.csv')
RR = pd.read_csv('RightThal_divBy_RightMorelTotal.csv')


LL.columns = ['LL_' + str(col) for col in LL.columns]
LR.columns = ['LR_' + str(col) for col in LR.columns] 
RL.columns = ['RL_' + str(col) for col in RL.columns]
RR.columns = ['RR_' + str(col) for col in RR.columns]


LL.rename(columns={'LL_Subject': 'Subject'}, inplace=True)
LR.rename(columns={'LR_Subject': 'Subject'}, inplace=True)
RL.rename(columns={'RL_Subject': 'Subject'}, inplace=True)
RR.rename(columns={'RR_Subject': 'Subject'}, inplace=True)



A = pd.merge(pd.merge(pd.merge(LL,LR,on='Subject'),RL,on='Subject'),RR,on='Subject')
A.to_csv('ALL_Thal_divBy_MorelTotal.csv')








print(L.columns)
Index(['Unnamed: 0', 'L_15_200', 'L_15_200_edit', 'L_CL', 'L_CM', 'L_CeM',
       'L_Hb', 'L_MDmc', 'L_MDpc', 'L_Pf', 'L_VLa', 'L_VLpd', 'L_VLpv', 'L_VM',
       'L_VPI', 'L_VPLa', 'L_VPLp', 'L_VPM', 'L_Vamc', 'L_Vapc', 'L_sPf',
       'Subject'],
      dtype='object')

print(R.columns)
Index(['Unnamed: 0', 'R_CL', 'R_CM', 'R_CeM', 'R_Hb', 'R_MDmc', 'R_MDpc',
       'R_Pf', 'R_VLa', 'R_VLpd', 'R_VLpv', 'R_VM', 'R_VPI', 'R_VPLa',
       'R_VPLp', 'R_VPM', 'R_Vamc', 'R_Vapc', 'R_sPf', 'Subject'],
      dtype='object')

print(Left.columns)
Index(['Unnamed: 0', 'Left_AD', 'Left_AM', 'Left_AV', 'Left_CL18', 'Left_CM18',
       'Left_CeM18', 'Left_Hb18', 'Left_LD', 'Left_LGNmc', 'Left_LGNpc',
       'Left_LP', 'Left_Li', 'Left_MDmc18', 'Left_MDpc18', 'Left_MGN',
       'Left_MV', 'Left_PV', 'Left_Pf18', 'Left_Po', 'Left_PuA', 'Left_PuI',
       'Left_PuL', 'Left_PuM', 'Left_SCP', 'Left_VLa18', 'Left_VLpd18',
       'Left_VLpv18', 'Left_VM18', 'Left_VPI18', 'Left_VPLa18', 'Left_VPLp18',
       'Left_VPM18', 'Left_Vamc18', 'Left_Vapc18', 'Left_behrens',
       'Left_behrens_SCP', 'Left_morel', 'Left_morel18', 'Left_morel2',
       'Left_morel_AD', 'Left_morel_AM', 'Left_morel_AV', 'Left_morel_CL',
       'Left_morel_CM', 'Left_morel_CeM', 'Left_morel_Hb', 'Left_morel_LD',
       'Left_morel_LGNmc', 'Left_morel_LGNpc', 'Left_morel_LP',
       'Left_morel_Li', 'Left_morel_MDmc', 'Left_morel_MDpc', 'Left_morel_MGN',
       'Left_morel_MV', 'Left_morel_PV', 'Left_morel_Pf', 'Left_morel_Po',
       'Left_morel_PuA', 'Left_morel_PuI', 'Left_morel_PuL', 'Left_morel_PuM',
       'Left_morel_RN', 'Left_morel_RNnoSCP', 'Left_morel_VLa',
       'Left_morel_VLpd', 'Left_morel_VLpv', 'Left_morel_VM', 'Left_morel_VPI',
       'Left_morel_VPLa', 'Left_morel_VPLp', 'Left_morel_VPM',
       'Left_morel_Vamc', 'Left_morel_Vapc', 'Left_morel_sPf',
       'Left_noSCPmorel', 'Left_noSCPmorel18', 'Left_w_SCP', 'Left_w_SCP2',
       'Left_w_SCP_50', 'Subject'],
      dtype='object')

print(Right.columns)
Index(['Unnamed: 0', 'Right_AD', 'Right_AM', 'Right_AV', 'Right_CL',
       'Right_CL18', 'Right_CM', 'Right_CM18', 'Right_CeM', 'Right_CeM18',
       'Right_Hb', 'Right_Hb18', 'Right_LD', 'Right_LGNmc', 'Right_LGNpc',
       'Right_LP', 'Right_Li', 'Right_MDmc', 'Right_MDmc18', 'Right_MDpc',
       'Right_MDpc18', 'Right_MGN', 'Right_MV', 'Right_PV', 'Right_Pf18',
       'Right_Po', 'Right_PuA', 'Right_PuI', 'Right_PuL', 'Right_PuM',
       'Right_SCP', 'Right_VLa18', 'Right_VLpd18', 'Right_VLpv18',
       'Right_VM18', 'Right_VPI18', 'Right_VPLa18', 'Right_VPLp18',
       'Right_VPM18', 'Right_Vamc18', 'Right_Vapc18', 'Right_behrens',
       'Right_behrens_SCP', 'Right_behrens_SCP_prac', 'Right_morel',
       'Right_morel18', 'Right_morel2', 'Right_noSCPmorel',
       'Right_noSCPmorel18', 'Right_w_SCP', 'Subject'],
      dtype='object')

