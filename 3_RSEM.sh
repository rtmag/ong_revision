~/myPrograms/RSEM-1.3.0/rsem-calculate-expression \
    -p 6 --paired-end --bam --estimate-rspd --output-genome-bam \
    ./STAR/DMSO_1_Aligned.toTranscriptome.out.bam \
    ~/resources/RSEM_REF_GRCh38/GRCh38 \
    RSEM/RSEM_DMSO_1

################################################################################################################################################
#  gen the commands
ls -1 STAR/*bam | perl -pe 's/^STAR\/(.+)_Aligned.toTranscriptome.out.bam/\~\/myPrograms\/RSEM\-1\.3\.0\/rsem\-calculate\-expression \\\
    \-p 5 \-\-paired\-end \-\-bam \-\-estimate\-rspd \-\-output\-genome\-bam \\\
    \.\/STAR\/$1_Aligned.toTranscriptome.out.bam \\\
    \~\/resources\/RSEM\_REF\_GRCh38\/GRCh38 \\\
    RSEM\/RSEM\_$1 &\n/g' > RSEM.sh

# run it
bash RSEM.sh
#################################################################################################################################################

# comment the first one
