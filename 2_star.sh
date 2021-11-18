################################################################################################################################################
#  gen the commands
ls -1 trimmed/*1_paired* | perl -pe 's/^trimmed\/(.+)_1_paired.fq.gz/STAR \-\-runThreadN 60 \-\-readFilesCommand zcat \-\-quantMode TranscriptomeSAM \\\
    \-\-genomeDir \/root\/resources\/genomeGRCh38\_genecode_out\/ \\\
    \-\-readFilesIn \.\/trimmed\/$1_1_paired.fq.gz \.\/trimmed\/$1_2_paired.fq.gz \\\
    \-\-outFileNamePrefix \.\/STAR\/$1\_\n/g' > STAR.sh

# load genome and exit
STAR --genomeLoad LoadAndExit --genomeDir /root/resources/genomeGRCh38_genecode_out/

# run it
bash STAR.sh
#################################################################################################################################################

# copy of the commands inside STAR.sh
STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/DMSO_1_1_paired.fq.gz ./trimmed/DMSO_1_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/DMSO_1_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/DMSO_2_1_paired.fq.gz ./trimmed/DMSO_2_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/DMSO_2_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/DMSO_3_1_paired.fq.gz ./trimmed/DMSO_3_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/DMSO_3_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM10_2_1_paired.fq.gz ./trimmed/HLM10_2_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM10_2_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM10_3_1_paired.fq.gz ./trimmed/HLM10_3_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM10_3_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM10_4_1_paired.fq.gz ./trimmed/HLM10_4_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM10_4_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM15_2_1_paired.fq.gz ./trimmed/HLM15_2_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM15_2_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM15_3_1_paired.fq.gz ./trimmed/HLM15_3_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM15_3_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM15_4_1_paired.fq.gz ./trimmed/HLM15_4_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM15_4_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM_S3I_1_1_paired.fq.gz ./trimmed/HLM_S3I_1_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM_S3I_1_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM_S3I_2_1_paired.fq.gz ./trimmed/HLM_S3I_2_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM_S3I_2_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/HLM_S3I_3_1_paired.fq.gz ./trimmed/HLM_S3I_3_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/HLM_S3I_3_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/S3I_1_1_paired.fq.gz ./trimmed/S3I_1_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/S3I_1_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/S3I_3_1_paired.fq.gz ./trimmed/S3I_3_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/S3I_3_

STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \    
    --readFilesIn ./trimmed/S3I_4_1_paired.fq.gz ./trimmed/S3I_4_2_paired.fq.gz \
    --outFileNamePrefix ./STAR/S3I_4_

