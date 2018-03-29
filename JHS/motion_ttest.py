import numpy as np
from scipy import stats

data = np.loadtxt('motion_summary_values.txt')
N = 40 #Sample Size

FD_average = data[:,0]
FEP_ave = data[0:40,0]
NOR_ave = data[40:80,0]

#For unbiased max likelihood estimate we have to divide the var by N-1, and therefore the parameter ddof = 1
var_FEP = FEP_ave.var(ddof=1) 
##0.25053871245152182
var_NOR = NOR_ave.var(ddof=1) 
##0.21128036225691596

#std deviation
ave_s = np.sqrt((var_FEP + var_NOR)/2) 
##0.48053047494848738

# Calculate the t-statistics
ave_t = (FEP_ave.mean() - NOR_ave.mean())/(ave_s*np.sqrt(2/N)) i
## 0.097540978808032225

# Compare with the critical t-value
ave_df = 2*N - 2 #Degrees of freedom
##78

#p-value after comparison with the t 
ave_p = 1 - stats.t.cdf(ave_t,df=ave_df) 
##0.46127350213996832

print("FD average t = " + str(ave_t))  
print("FD average p = " + str(2*ave_p)) #Note that we multiply the p value by 2 because its a twp tail t-test
##FD average t = 0.097540978808
##FD average p = 0.92254700428
### You can see that after comparing the t statistic with the critical t value (computed internally) we get a good p value of 0.0005 and thus we reject the null hypothesis and thus it proves that the mean of the two distributions are different and statistically significant.

## Cross Checking with the internal scipy function
ave_t2, ave_p2 = stats.ttest_ind(FEP_ave,NOR_ave)
print("FD average cross-check t = " + str(ave_t2)) 
print("FD average cross-ceck p = " + str(2*ave_p2)) 
##FD average cross-check t = 0.097540978808
##FD average cross-ceck p = 1.84509400856



np.mean(FEP_ave) ## same result with FEP_ave.mean()  
##1.1711297669231748
np.std(FEP_ave) 
##0.49424209112562822

np.mean(NOR_ave) ##same result with NOR_ave.mean() 
##1.1606490003845
np.std(NOR_ave) 
##0.45387041454636923

ttest_ind_from_stats(mean1=1.1711297669231748, std1=0.49424209112562822, nobs1=40, mean2=1.1606490003845, std2=0.45387041454636923, nobs2=40)
##Ttest_indResult(statistic=0.098783589142767886, pvalue=0.92156352780945539)









FD_sum = data[:,1]
FEP_sum = data[0:40,1]
NOR_sum = data[40:80,1]
v_FEP = FEP_sum.var(ddof=1) 
##1028.166231018082
v_NOR = NOR_sum.var(ddof=1) 
##892.65953053513397 
sum_s = np.sqrt((v_FEP + v_NOR)/2) 
##30.990528888300826
sum_t = (FEP_sum.mean() - NOR_sum.mean())/(sum_s*np.sqrt(2/N)) 
##0.43990964431831631
sum_df = 2*N - 2 
##78
sum_p = 1 - stats.t.cdf(sum_t,df=sum_df) 
##0.33060954775659979

print("FD sum t = " + str(sum_t))
print("FD sum p = " + str(2*sum_p))  
## FD sum t = 0.439909644318
## FD sum p = 0.661219095513

sum_t2, sum_p2 = stats.ttest_ind(FEP_sum,NOR_sum)
print("FD sum cross-check t = " + str(sum_t2)) 
print("FD sum cross-ceck p = " + str(2*sum_p2)) 
##FD sum cross-check t = 0.439909644318
##FD sum cross-ceck p = 1.32243819103



np.mean(FEP_sum) ## same result with FEP_sum.mean() 
##78.490623774999989
np.std(FEP_sum) 
##31.661681497397289

np.mean(NOR_sum) ## same result with NOR_sum.mean() 
##75.442185025000001
np.std(NOR_sum) 
##29.50157694550845

ttest_ind_from_stats(mean1=78.490623774999989, std1=31.661681497397289, nobs1=40, mean2=75.442185025000001, std2=29.50157694550845, nobs2=40)
#Ttest_indResult(statistic=0.44551381476093244, pvalue=0.65718256766663197)
