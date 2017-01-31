for i in $(cat lindgreen_fastq.txt)
do
trim-low-abund.py -M 16e9 -k 20 $i
done
