 http://genome.jgi.doe.gov/
 
You need to register an account first. Then on Top left corner, in "Within" field choose "Proposals" and in "By" choose "Proposal ID". In the "Search for" field fill in "1296".

Then hundreds of samples will show up since there are samples from many different years. The samples you want to run are from 2012. There should be 7 replicates from each crop and three crops, C(corn), M (Miscanthus), and S (switchgrass).

It is hard to tell the difference between multiple years. Here is the tricky part. In the project name: Metagenomic analysis of the rhizosphere of three biofuel crops at the KBS intensive site: KBS Corn C1, if the highlighted part is like C1, S2, M7, those are the samples from 2012. In contrast, if the highlighted part is like C1-2, S1-3, M3-5, those are from other years.

Download method options are in the link below. I recommend using API for automation. (third method).
http://genome.jgi.doe.gov/help/download.jsf

Anything no clear, please let me know.


c1

http://genome.jgi.doe.gov/KBSCornC1_FD/KBSCornC1_FD.download.html

http://genome.jgi.doe.gov/KBSCornC2_FD/KBSCornC2_FD.download.html

http://genome.jgi.doe.gov/KBSCornC3_FD/KBSCornC3_FD.download.html

http://genome.jgi.doe.gov/KBSCornC4_FD/KBSCornC4_FD.download.html

http://genome.jgi.doe.gov/KBSCornC5_FD/KBSCornC5_FD.download.html

http://genome.jgi.doe.gov/KBSCornC6_FD/KBSCornC6_FD.download.html

http://genome.jgi.doe.gov/KBSCornC7_FD/KBSCornC7_FD.download.html

---

http://genome.jgi.doe.gov/KBSMiscanthusM1_FD/KBSMiscanthusM1_FD.download.html

http://genome.jgi.doe.gov/KBSMiscanthusM2_FD/KBSMiscanthusM2_FD.download.html

http://genome.jgi.doe.gov/KBSMiscanthusM3_FD/KBSMiscanthusM3_FD.download.html

http://genome.jgi.doe.gov/KBSMiscanthusM4_FD/KBSMiscanthusM4_FD.download.html

http://genome.jgi.doe.gov/KBSMiscanthusM5_FD/KBSMiscanthusM5_FD.download.html

http://genome.jgi.doe.gov/KBSMiscanthusM6_FD/KBSMiscanthusM6_FD.download.html

http://genome.jgi.doe.gov/KBSMisM7withPhiX_FD

http://genome.jgi.doe.gov/KBSMiswitspikein_FD/KBSMiswitspikein_FD.download.html

---
http://genome.jgi.doe.gov/KBSSwiS1_FD/KBSSwiS1_FD.download.html

http://genome.jgi.doe.gov/KBSSwiwitspikein_2_FD/KBSSwiwitspikein_2_FD.download.html

http://genome.jgi.doe.gov/KBSSwiS2withPhiX_FD/KBSSwiS2withPhiX_FD.download.html

http://genome.jgi.doe.gov/KBSSwiS3_FD/KBSSwiS3_FD.download.html

http://genome.jgi.doe.gov/KBSSwiS4_FD/KBSSwiS4_FD.download.html

http://genome.jgi.doe.gov/KBSSwiS5withPhiX_FD/KBSSwiS5withPhiX_FD.download.html

http://genome.jgi.doe.gov/KBSSwiS6_FD/KBSSwiS6_FD.download.html

http://genome.jgi.doe.gov/KBSSwiS7_FD/KBSSwiS7_FD.download.html

---


with spike 5 is actually 2 

http://genome.jgi.doe.gov/KBSSwiwitspikein_2_FD/KBSSwiwitspikein_2_FD.download.html


--- 
What's the difference between PhiX and Spike-in?

#### Log-in using the following command 

	curl 'https://signon.jgi.doe.gov/signon/create' --data-urlencode 'login=philliptbrooks@gmail.com' --data-urlencode 'password=Cx9-5pr-tCc-wkY' -c cookies > /dev/null
	
Retrieve a list of files for each data set

	for i in $(cat filenames.txt)
	do
	curl http://genome.jgi.doe.gov/ext-api/downloads/get-directory?organism=$i -b cookies > $i.xml
	done


download the data  (replace "&amp;" with "&")

	#KBSCornC1_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC1/download/_JAMO/523e77cc067c013937083cd9/7332.6.69355.TAGCTT.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSCornC1_FD.fastq.gz

	#KBSCornC2_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC2/download/_JAMO/52335b10067c011defe80c48/7301.6.67019.GGCTAC.adnq.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSCornC2_FD.fastq.gz

	#KBSCornC3_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC3/download/_JAMO/52335ab5067c011defe80baa/7304.1.67060.CTTGTA.adnq.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSCornC3_FD.fastq.gz

	#KBSCornC4_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC4/download/_JAMO/522c759a067c011defe7fbbf/7304.2.67063.AGTCAA.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSCornC4_FD.fastq.gz

	#KBSCornC5_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC5/download/_JAMO/52335b1e067c011defe80c61/7304.3.67061.AGTTCC.adnq.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSCornC5_FD.fastq.gz

	#KBSCornC6_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC6/download/_JAMO/522c8b38067c011defe7fbff/7304.4.67059.ATGTCA.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSCornC6_FD.fastq.gz

	#KBSCornC7_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC7/download/_JAMO/5233593b067c011defe8093c/7301.7.67023.CCGTCC.adnq.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSCornC7_FD.fastq.gz

	#KBSMiscanthusM1_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM1/download/_JAMO/523359bf067c011defe80a20/7304.5.67064.GTAGAG.adnq.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSMiscanthusM1_FD.fastq.gz

	#KBSMiscanthusM2_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM2/download/_JAMO/522c8906067c011defe7fbf3/7304.6.67058.GTCCGC.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSMiscanthusM2_FD.fastq.gz

	#KBSMiscanthusM3_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM3/download/_JAMO/52335984067c011defe809be/7304.7.67062.GTGAAA.adnq.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSMiscanthusM3_FD.fastq.gz

	#KBSMiscanthusM4_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM4/download/_JAMO/523e7516067c013937083cbb/7333.1.69391.CGTACG.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSMiscanthusM4_FD.fastq.gz

	#KBSMiscanthusM5_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM5/download/_JAMO/523f1a12067c013937083e5a/7333.2.69394.GAGTGG.adnq.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSMiscanthusM5_FD.fastq.gz

	#KBSMiscanthusM6_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM6/download/_JAMO/523f287d067c013937083e64/7333.3.69392.GGTAGC.adnq.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSMiscanthusM6_FD.fastq.gz

	#KBSMisM7withPhiX_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMisM7withPhiX/download/_JAMO/52604303067c015ef4c96adc/7394.1.71229.CTTGTA.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSMisM7withPhiX_FD.fastq.gz

	#KBSMiswitspikein_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiswitspikein/download/_JAMO/51d55091067c014cd6f0f3a4/6940.4.58248.GGCTAC.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSMiswitspikein_FD.fastq.gz

	#KBSSwiS1_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS1/download/_JAMO/523e7a14067c013937083ce4/7333.4.69390.ATCACG.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiS1_FD.fastq.gz

	#KBSSwiwitspikein3FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiwitspikein/download/_JAMO/51d5508d067c014cd6f0f361/6940.4.58248.TAGCTT.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiwitspikein_3_FD.fastq.gz

	#KBSSwiS2withPhiX_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS2withPhiX/download/_JAMO/52758a9d067c015ef4cb5b61/7423.6.73036.TAGCTT.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiS2withPhiX_FD.fastq.gz

	#KBSSwiwitspikein3FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiwitspikein/download/_JAMO/51d5508d067c014cd6f0f361/6940.4.58248.TAGCTT.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiwitspikein_3_FD.fastq.gz

	#KBSSwiS3_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS3/download/_JAMO/523e823e067c013937083d0e/7333.5.69395.CGATGT.fastq.gz' 1023806 -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiS3_FD.fastq.gz

	#KBSSwiS4_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS4/download/_JAMO/523e8517067c013937083d33/7333.6.69389.ACAGTG.fastq.gz -b cookies' | gunzip -c | head -8000000 | gzip -9c > KBSSwiS4_FD.fastq.gz

	#KBSSwiS5withPhiX_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS5withPhiX/download/_JAMO/52757f42067c015ef4cb5b22/7423.7.73040.GGCTAC.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiS5withPhiX_FD.fastq.gz

	#KBSSwiwitspikein2FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiwitspikein_2/download/_JAMO/51d54e5a067c014cd6f0e299/6908.4.57554.GATCAG.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiwitspikein_2_FD.fastq.gz

	#KBSSwiS6_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS6/download/_JAMO/523e8223067c013937083d0c/7333.7.69393.GCCAAT.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiS6_FD.fastq.gz

	#KBSSwiS7_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS7/download/_JAMO/523e752d067c013937083cbd/7332.7.69360.TTAGGC.fastq.gz' -b cookies | gunzip -c | head -8000000 | gzip -9c > KBSSwiS7_FD.fastq.gz

----

download entire dataset 

----

#KBSCornC1_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC1/download/_JAMO/523e77cc067c013937083cd9/7332.6.69355.TAGCTT.fastq.gz' -b cookies > KBSCornC1_FD.fastq.gz

	#KBSCornC2_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC2/download/_JAMO/52335b10067c011defe80c48/7301.6.67019.GGCTAC.adnq.fastq.gz' -b cookies > KBSCornC2_FD.fastq.gz

	#KBSCornC3_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC3/download/_JAMO/52335ab5067c011defe80baa/7304.1.67060.CTTGTA.adnq.fastq.gz' -b cookies > KBSCornC3_FD.fastq.gz

	#KBSCornC4_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC4/download/_JAMO/522c759a067c011defe7fbbf/7304.2.67063.AGTCAA.fastq.gz' -b cookies > KBSCornC4_FD.fastq.gz

	#KBSCornC5_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC5/download/_JAMO/52335b1e067c011defe80c61/7304.3.67061.AGTTCC.adnq.fastq.gz' -b cookies > KBSCornC5_FD.fastq.gz

	#KBSCornC6_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC6/download/_JAMO/522c8b38067c011defe7fbff/7304.4.67059.ATGTCA.fastq.gz' -b cookies > KBSCornC6_FD.fastq.gz

	#KBSCornC7_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSCornC7/download/_JAMO/5233593b067c011defe8093c/7301.7.67023.CCGTCC.adnq.fastq.gz' -b cookies > KBSCornC7_FD.fastq.gz

	#KBSMiscanthusM1_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM1/download/_JAMO/523359bf067c011defe80a20/7304.5.67064.GTAGAG.adnq.fastq.gz' -b cookies > KBSMiscanthusM1_FD.fastq.gz

	#KBSMiscanthusM2_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM2/download/_JAMO/522c8906067c011defe7fbf3/7304.6.67058.GTCCGC.fastq.gz' -b cookies > KBSMiscanthusM2_FD.fastq.gz

	#KBSMiscanthusM3_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM3/download/_JAMO/52335984067c011defe809be/7304.7.67062.GTGAAA.adnq.fastq.gz' -b cookies > KBSMiscanthusM3_FD.fastq.gz

	#KBSMiscanthusM4_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM4/download/_JAMO/523e7516067c013937083cbb/7333.1.69391.CGTACG.fastq.gz' -b cookies > KBSMiscanthusM4_FD.fastq.gz

	#KBSMiscanthusM5_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM5/download/_JAMO/523f1a12067c013937083e5a/7333.2.69394.GAGTGG.adnq.fastq.gz' -b cookies > KBSMiscanthusM5_FD.fastq.gz

	#KBSMiscanthusM6_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiscanthusM6/download/_JAMO/523f287d067c013937083e64/7333.3.69392.GGTAGC.adnq.fastq.gz' -b cookies > KBSMiscanthusM6_FD.fastq.gz

	#KBSMisM7withPhiX_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMisM7withPhiX/download/_JAMO/52604303067c015ef4c96adc/7394.1.71229.CTTGTA.fastq.gz' -b cookies > KBSMisM7withPhiX_FD.fastq.gz

	#KBSMiswitspikein_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSMiswitspikein/download/_JAMO/51d55091067c014cd6f0f3a4/6940.4.58248.GGCTAC.fastq.gz' -b cookies > KBSMiswitspikein_FD.fastq.gz

	#KBSSwiS1_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS1/download/_JAMO/523e7a14067c013937083ce4/7333.4.69390.ATCACG.fastq.gz' -b cookies > KBSSwiS1_FD.fastq.gz

	#KBSSwiwitspikein3FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiwitspikein/download/_JAMO/51d5508d067c014cd6f0f361/6940.4.58248.TAGCTT.fastq.gz' -b cookies > KBSSwiwitspikein_3_FD.fastq.gz

	#KBSSwiS2withPhiX_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS2withPhiX/download/_JAMO/52758a9d067c015ef4cb5b61/7423.6.73036.TAGCTT.fastq.gz' -b cookies > KBSSwiS2withPhiX_FD.fastq.gz

	#KBSSwiwitspikein3FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiwitspikein/download/_JAMO/51d5508d067c014cd6f0f361/6940.4.58248.TAGCTT.fastq.gz' -b cookies > KBSSwiwitspikein_3_FD.fastq.gz

	#KBSSwiS3_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS3/download/_JAMO/523e823e067c013937083d0e/7333.5.69395.CGATGT.fastq.gz' -b cookies > KBSSwiS3_FD.fastq.gz

	#KBSSwiS4_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS4/download/_JAMO/523e8517067c013937083d33/7333.6.69389.ACAGTG.fastq.gz' -b cookies > KBSSwiS4_FD.fastq.gz

	#KBSSwiS5withPhiX_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS5withPhiX/download/_JAMO/52757f42067c015ef4cb5b22/7423.7.73040.GGCTAC.fastq.gz' -b cookies > KBSSwiS5withPhiX_FD.fastq.gz

	#KBSSwiwitspikein2FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiwitspikein_2/download/_JAMO/51d54e5a067c014cd6f0e299/6908.4.57554.GATCAG.fastq.gz' -b cookies > KBSSwiwitspikein_2_FD.fastq.gz

	#KBSSwiS6_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS6/download/_JAMO/523e8223067c013937083d0c/7333.7.69393.GCCAAT.fastq.gz' -b cookies > KBSSwiS6_FD.fastq.gz

	#KBSSwiS7_FD
	curl 'http://genome.jgi.doe.gov/ext-api/downloads/get_tape_file?blocking=true&url=/KBSSwiS7/download/_JAMO/523e752d067c013937083cbd/7332.7.69360.TTAGGC.fastq.gz' -b cookies > KBSSwiS7_FD.fastq.gz







