sourmash sbt_gather -k 21 ../signatures/Thermotoga_neapolitana_DSM_4359_21.sbt.json ../signatures/SRR606249.pe.qc.fq.gz.abundtrim10000.sig --threshold=0.0000001 -o mircea-reads_v_Thermotoga_neapolitana_DSM_4359_21.txt

sourmash sbt_gather -k 21 ../signatures/Thermotoga_petrophila_RKU-1_21.sbt.json ../signatures/SRR606249.pe.qc.fq.gz.abundtrim10000.sig --threshold=0.0000001 -o mircea-reads_v_Thermotoga_petrophila_RKU-1_21.txt

sourmash sbt_gather -k 21 ../signatures/Thermotoga_sp._RQ2_21.sbt.json ../signatures/SRR606249.pe.qc.fq.gz.abundtrim10000.sig --threshold=0.0000001 -o mircea-reads_v_Thermotoga_sp._RQ2_21..txt

sourmash sbt_gather -k 21 ../signatures/Campylobacter_jejuni_11168_21.sbt.json ../signatures/SRR606249.pe.qc.fq.gz.abundtrim10000.sig -o mircea-reads_v_Campylobacter_jejuni_11168_21.txt

sourmash sbt_gather -k 21 ../signatures/Thermotoga_maritima_MSB8_thermotogales_21.sbt.json ../signatures/SRR606249.pe.qc.fq.gz.abundtrim10000.sig --threshold=0.0000001 -o mircea-reads_v_Thermotoga_maritima_MSB8_thermotogales_21.txt
