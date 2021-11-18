STAR --runThreadN 60 --readFilesCommand zcat --quantMode TranscriptomeSAM \
    --genomeDir /root/resources/genomeGRCh38_genecode_out/ \
    --readFilesIn ./trimmed/DMSO_1_1_paired.fq.gz ./trimmed/DMSO_1_2_paired.fq.gz \
    --outFileNamePrefix tmp/DMSO_1_


