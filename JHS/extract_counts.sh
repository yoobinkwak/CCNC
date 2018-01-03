for i in $@ ; do
	for L_tck in ${i}/baseline/DTI/L_*tck ; do
		L_base=`basename -s .tck ${L_tck}`
		#echo ${L_base}
		tckinfo -count ${L_tck} > ${i}/baseline/DTI/${L_base}.txt
	done

	for R_tck in ${i}/baseline/DTI/R_*tck ; do
		R_base=`basename -s .tck ${R_tck}`
		tckinfo -count ${R_tck} > ${i}/baseline/DTI/${R_base}.txt
	done


	if [ ! -e ${i}/baseline/L_extracted_counts.txt ] ; then
		for L_txt in ${i}/baseline/DTI/L_*txt ; do
			L_base=`basename -s .txt ${L_txt}`
			count=`awk -v RS="\0" '{print $NF}' ${L_txt}`
			printf "%s\t%s\n" ${L_base} ${count} >> ${i}/baseline/L_extracted_counts.txt
		done
	fi

	if [ ! -e ${i}/baseline/R_extracted_counts.txt ] ; then
		for R_txt in ${i}/baseline/DTI/R_*txt ; do
			R_base=`basename -s .txt ${R_txt}`
			count=`awk -v RS="\0" '{print $NF}' ${R_txt}`
			printf "%s\t%s\n" ${R_base} ${count} >> ${i}/baseline/R_extracted_counts.txt
		done
	fi

#	cat ${i}/baseline/DTI/Left_*txt > ${i}/baseline/L_extracted_counts.txt
#	cat ${i}/baseline/DTI/Left_*txt > ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/act/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/back/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/crop/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/down/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/fod_/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/init_/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/lmax/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/max_/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/meth/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/mrtri/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/output/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/rk4/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/step/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/precomp/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/source/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/stop/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/thresh/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/times/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/unid/d' ${i}/baseline/L_extracted_counts.txt
#	sed -i '' '/ROI/d' ${i}/baseline/L_extracted_counts.txt

#	cat ${i}/baseline/DTI/Right_*txt > ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/act/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/back/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/crop/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/down/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/fod_/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/init_/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/lmax/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/max_/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/meth/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/mrtri/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/output/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/rk4/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/step/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/precomp/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/source/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/stop/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/thresh/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/times/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/unid/d' ${i}/baseline/R_extracted_counts.txt
#	sed -i '' '/ROI/d' ${i}/baseline/R_extracted_counts.txt



done

