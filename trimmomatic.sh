################################################################################################################################################
#  gen the commands
ls -1 */*/*1.fq.gz| perl -pe 's/^raw_data\/(.+)\/(.+)_1.fq.gz/java \-jar \~\/myPrograms\/Trimmomatic\-0\.39\/trimmomatic\-0\.39\.jar PE \\\
    \-threads 3 \\\
    \.\/raw\_data\/$1\/$2_1\.fq\.gz \.\/raw\_data\/$1\/$2_2\.fq\.gz \\\
    \.\/trimmed\/$2_1_paired.fq.gz \.\/trimmed\/$2_1_unpaired.fq.gz  \.\/trimmed\/$2_2_paired.fq.gz \.\/trimmed\/$2_2_unpaired.fq.gz \\\
    LEADING\:3 TRAILING\:3 SLIDINGWINDOW\:4\:15 MINLEN\:75 \&\> \.\/logs\/$2_trim\.log & \n/g'

#################################################################################################################################################


    
