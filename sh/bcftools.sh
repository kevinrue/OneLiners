# Notes

# 1
# -i can be used to filter on an expression (essentially any field)

# -f applied to the FILTER field
# -i used to find INFO/ANN field containg "|HIGH|"
bcftools view -H \
	-f PASS \ # Filter OPR >= 0.8
	-i "ANN[*] ~ \"|HIGH|\"" \ # Filter if the INFO/ANN field contains a pattern
	chr22_agg2_dedup_vep.vcf.gz \
	| head
	
# -i used to filter on INFO/UK10KWGS_AC integer field being > 10
bcftools view -H \
	-f PASS \
	chr22_agg2_dedup_vep.vcf.gz \
	-r 22:16000001-217000000 \
	-i "INFO/UK10KWGS_AC > 10" 
	| head
