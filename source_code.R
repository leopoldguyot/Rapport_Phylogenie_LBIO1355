library(seqinr)
library(ape)


Cassidinae_28S_D2 <- c("AY927699","AY927700","AY927701","AY927704","AY927708",
                       "AY927709","AY927710","AY927711","AY927712","AY927713",
                       "AY927714","AY927716","AY927717","AY927718","AY927719",
                       "AY927720","AY927723","AY927724","AY927725","AY927726",
                       "AY927727","AY927728","AY927729","AY927730","AY927732",
                       "AY927734","AY927736","AY927737","AY927738","AY927739",
                       "AY927740","AY927742","AY927741")


Cassidinae_28S_D2_Names <- c("Agroiconota_propinqua","Acromis_sparsa",
                             "Chelymorpha_alternans","Charidotis_abrupta",
                             "Charidotella_proxima","Charidotella_sexpunctata",
                             "Charidotella_sinuata","Charidotella_ventricosa",
                             "Charidotis_vitreata","Charidotella_zona",
                             "Cistudinella_foveolata","Deloyala_guttata",
                             "Discomorpha_salvini","Hilarocassis_evanida",
                             "Hybosa_mellicula","Imatidium_thoracicum",
                             "Microctenochira_cumulata","Metrionella_erratica",
                             "Microctenochira_flavonotata",
                             "Microctenochira_fraterna",
                             "Microctenochira_nigrocincta",
                             "Microctenochira_sp1","Microctenochira_sp2",
                             "Microctenochira_nr_nigrocincta",
                             "Omaspides_bistriata","Polychalma_multicava",
                             "Paraselenis_tersa","Spaethiella_species",
                             "Stolas_extricata","Stolas_lebasii",
                             "Stolas_pictilis","Tapinaspis_waesmali",
                             "Xenocassis_ambita")


seqs_Cassidinae_28S_D2 <- read.GenBank(Cassidinae_28S_D2, Cassidinae_28S_D2_Names, as.character = T)
names(seqs_Cassidinae_28S_D2) <- Cassidinae_28S_D2_Names

write.fasta(seqs_Cassidinae_28S_D2, Cassidinae_28S_D2_Names, file="Cassidinae_28S_D2.fasta")


Eulo_28S_D2 <- c("AY771681","AY771698","AY771696","AY771696","AY771682",
                 "AY771682","AY771683","AY771683","AY771685","AY771684",
                 "AY771686","AY771686","AY771687","AY771688","AY771688",
                 "AY771689","AY771689","AY771689","AY771689","AY771689",
                 "AY771690","AY771691","AY771697","AY771697","AY771692",
                 "AY771693","AY771694","AY771695","AY771701","AY771699",
                 "AY771700","AY771702")

Eulo_28S_D2_Names <- c("Emersonella_albicoxa","Emersonella_carballoi",
                       "Emersonella_cuignetae_subtype1",
                       "Emersonella_cuignetae_subtype2",
                       "Emersonella_horismenoides_sub1",
                       "Emersonella_horismenoides_sub2",
                       "Emersonella_niveipes_subtype1",
                       "Emersonella_niveipes_subtype2",
                       "Emersonella_nr_carballoi",
                       "Emersonella_nr_hastata",
                       "Emersonella_planiceps_subtype1",
                       "Emersonella_planiceps_subtype2",
                       "Emersonella_planiscuta","Emersonella_pubipennis_sub1",
                       "Emersonella_pubipennis_sub2",
                       "Emersonella_rotunda_subtype1",
                       "Emersonella_rotunda_subtype2",
                       "Emersonella_rotunda_subtype3",
                       "Emersonella_rotunda_subtype4",
                       "Emersonella_rotunda_subtype5",
                       "Emersonella_species1","Emersonella_species2",
                       "Emersonella_species3_subtype1",
                       "Emersonella_species3_subtype2","Emersonella_species4",
                       "Emersonella_tanigaster","Emersonella_varicolor",
                       "Emersonella_windsori","Horismenus_species1",
                       "Horismenus_species5","Horismenus_species6",
                       "Signiphoridae_species1")

seqs_Eulo_28S_D2 <-retrieveseqs3(Eulo_28S_D2,"genbank")

names(seqs_Eulo_28S_D2) <- Eulo_28S_D2_Names

write.fasta(seqs_Eulo_28S_D2, Eulo_28S_D2_Names, file="Eulo_28S_D2.fasta")
