################################################################################################################################################
#  gen the commands
ls -1 */*/*1.fq.gz| perl -pe 's/^raw_data\/(.+)\/(.+)_1.fq.gz/java \-jar \~\/myPrograms\/Trimmomatic\-0\.39\/trimmomatic\-0\.39\.jar PE \\\
    \-threads 3 \\\
    \.\/raw\_data\/$1\/$2_1\.fq\.gz \.\/raw\_data\/$1\/$2_2\.fq\.gz \\\
    \.\/trimmed\/$2_1_paired.fq.gz \.\/trimmed\/$2_1_unpaired.fq.gz  \.\/trimmed\/$2_2_paired.fq.gz \.\/trimmed\/$2_2_unpaired.fq.gz \\\
    LEADING\:3 TRAILING\:3 SLIDINGWINDOW\:4\:15 MINLEN\:75 \&\> \.\/logs\/$2_trim\.log & \n/g' > trimmomatic.sh
    
# run it
bash trimmomatic.sh

#################################################################################################################################################

# copy of the commands inside trimmomatic.sh

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/DMSO_1/DMSO_1_1.fq.gz ./raw_data/DMSO_1/DMSO_1_2.fq.gz \
    ./trimmed/DMSO_1_1_paired.fq.gz ./trimmed/DMSO_1_1_unpaired.fq.gz  ./trimmed/DMSO_1_2_paired.fq.gz ./trimmed/DMSO_1_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/DMSO_1_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/DMSO_2/DMSO_2_1.fq.gz ./raw_data/DMSO_2/DMSO_2_2.fq.gz \
    ./trimmed/DMSO_2_1_paired.fq.gz ./trimmed/DMSO_2_1_unpaired.fq.gz  ./trimmed/DMSO_2_2_paired.fq.gz ./trimmed/DMSO_2_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/DMSO_2_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/DMSO_3/DMSO_3_1.fq.gz ./raw_data/DMSO_3/DMSO_3_2.fq.gz \
    ./trimmed/DMSO_3_1_paired.fq.gz ./trimmed/DMSO_3_1_unpaired.fq.gz  ./trimmed/DMSO_3_2_paired.fq.gz ./trimmed/DMSO_3_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/DMSO_3_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM10_2/HLM10_2_1.fq.gz ./raw_data/HLM10_2/HLM10_2_2.fq.gz \
    ./trimmed/HLM10_2_1_paired.fq.gz ./trimmed/HLM10_2_1_unpaired.fq.gz  ./trimmed/HLM10_2_2_paired.fq.gz ./trimmed/HLM10_2_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM10_2_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM10_3/HLM10_3_1.fq.gz ./raw_data/HLM10_3/HLM10_3_2.fq.gz \
    ./trimmed/HLM10_3_1_paired.fq.gz ./trimmed/HLM10_3_1_unpaired.fq.gz  ./trimmed/HLM10_3_2_paired.fq.gz ./trimmed/HLM10_3_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM10_3_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM10_4/HLM10_4_1.fq.gz ./raw_data/HLM10_4/HLM10_4_2.fq.gz \
    ./trimmed/HLM10_4_1_paired.fq.gz ./trimmed/HLM10_4_1_unpaired.fq.gz  ./trimmed/HLM10_4_2_paired.fq.gz ./trimmed/HLM10_4_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM10_4_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM15_2/HLM15_2_1.fq.gz ./raw_data/HLM15_2/HLM15_2_2.fq.gz \
    ./trimmed/HLM15_2_1_paired.fq.gz ./trimmed/HLM15_2_1_unpaired.fq.gz  ./trimmed/HLM15_2_2_paired.fq.gz ./trimmed/HLM15_2_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM15_2_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM15_3/HLM15_3_1.fq.gz ./raw_data/HLM15_3/HLM15_3_2.fq.gz \
    ./trimmed/HLM15_3_1_paired.fq.gz ./trimmed/HLM15_3_1_unpaired.fq.gz  ./trimmed/HLM15_3_2_paired.fq.gz ./trimmed/HLM15_3_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM15_3_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM15_4/HLM15_4_1.fq.gz ./raw_data/HLM15_4/HLM15_4_2.fq.gz \
    ./trimmed/HLM15_4_1_paired.fq.gz ./trimmed/HLM15_4_1_unpaired.fq.gz  ./trimmed/HLM15_4_2_paired.fq.gz ./trimmed/HLM15_4_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM15_4_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM_S3I_1/HLM_S3I_1_1.fq.gz ./raw_data/HLM_S3I_1/HLM_S3I_1_2.fq.gz \
    ./trimmed/HLM_S3I_1_1_paired.fq.gz ./trimmed/HLM_S3I_1_1_unpaired.fq.gz  ./trimmed/HLM_S3I_1_2_paired.fq.gz ./trimmed/HLM_S3I_1_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM_S3I_1_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM_S3I_2/HLM_S3I_2_1.fq.gz ./raw_data/HLM_S3I_2/HLM_S3I_2_2.fq.gz \
    ./trimmed/HLM_S3I_2_1_paired.fq.gz ./trimmed/HLM_S3I_2_1_unpaired.fq.gz  ./trimmed/HLM_S3I_2_2_paired.fq.gz ./trimmed/HLM_S3I_2_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM_S3I_2_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/HLM_S3I_3/HLM_S3I_3_1.fq.gz ./raw_data/HLM_S3I_3/HLM_S3I_3_2.fq.gz \
    ./trimmed/HLM_S3I_3_1_paired.fq.gz ./trimmed/HLM_S3I_3_1_unpaired.fq.gz  ./trimmed/HLM_S3I_3_2_paired.fq.gz ./trimmed/HLM_S3I_3_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/HLM_S3I_3_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/S3I_1/S3I_1_1.fq.gz ./raw_data/S3I_1/S3I_1_2.fq.gz \
    ./trimmed/S3I_1_1_paired.fq.gz ./trimmed/S3I_1_1_unpaired.fq.gz  ./trimmed/S3I_1_2_paired.fq.gz ./trimmed/S3I_1_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/S3I_1_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/S3I_3/S3I_3_1.fq.gz ./raw_data/S3I_3/S3I_3_2.fq.gz \
    ./trimmed/S3I_3_1_paired.fq.gz ./trimmed/S3I_3_1_unpaired.fq.gz  ./trimmed/S3I_3_2_paired.fq.gz ./trimmed/S3I_3_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/S3I_3_trim.log & 

java -jar ~/myPrograms/Trimmomatic-0.39/trimmomatic-0.39.jar PE \
    -threads 3 \
    ./raw_data/S3I_4/S3I_4_1.fq.gz ./raw_data/S3I_4/S3I_4_2.fq.gz \
    ./trimmed/S3I_4_1_paired.fq.gz ./trimmed/S3I_4_1_unpaired.fq.gz  ./trimmed/S3I_4_2_paired.fq.gz ./trimmed/S3I_4_2_unpaired.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:75 &> ./logs/S3I_4_trim.log & 

