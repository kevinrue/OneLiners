bcftools view -H \
	-f PASS \ # Filter OPR >= 0.8
	-i "ANN[*] ~ \"|HIGH|\"" \ # Filter if the INFO/ANN field contains a pattern
	chr22_agg2_dedup_vep.vcf.gz \
	| head
