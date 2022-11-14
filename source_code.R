library(ape)
source("seqs.R")

# Cassidinae (hôtes) :
######################Cassidinae_28S_D2#########################
seqs_Cassidinae_28S_D2 <- read.GenBank(Cassidinae_28S_D2, 
                                       Cassidinae_28S_D2_names,
                                       as.character = T)
names(seqs_Cassidinae_28S_D2) <- Cassidinae_28S_D2_names

write.fasta(seqs_Cassidinae_28S_D2, Cassidinae_28S_D2_names,
            file="data_output/Cassidinae_28S_D2.fasta")

#Alignement
dnabin_Cassidinae_28S_D2 <- as.DNAbin(seqs_Cassidinae_28S_D2)
muscle(dnabin_Cassidinae_28S_D2, exec = "muscle",
       MoreArgs = "", quiet = TRUE,
       file = "data_output/Cassidinae_28S_D2_align.fasta")


# Eulophidae (parasitoïdes)
####################### 28S D2 #########################
seqs_Eulo_28S_D2 <- read.GenBank(Eulo_28S_D2,
                                 Eulo_28S_D2_names,
                                 as.character = T)
names(seqs_Eulo_28S_D2) <- Eulo_28S_D2_names

write.fasta(seqs_Eulo_28S_D2, Eulo_28S_D2_names,
            file="data_output/Eulo_28S_D2.fasta")

#alignement
dnabin_Eulo_28S_D2 <- as.DNAbin(seqs_Eulo_28S_D2)
muscle(dnabin_Eulo_28S_D2, exec = "muscle",
       MoreArgs = "", quiet = TRUE,
       file = "data_output/Eulo_28S_D2_align.fasta")

###################### ITS2 ##########################
seqs_Eulo_ITS2 <- read.GenBank(Eulo_ITS2, 
                               Eulo_ITS2_names,
                                       as.character = T)
names(seqs_Eulo_ITS2) <- Eulo_ITS2_names

write.fasta(seqs_Eulo_ITS2, Eulo_ITS2_names,
            file="data_output/Eulo_ITS2.fasta")

#alignement
dnabin_Eulo_ITS2 <- as.DNAbin(seqs_Eulo_ITS2)
muscle(dnabin_Eulo_ITS2, exec = "muscle",
       MoreArgs = "", quiet = TRUE,
       file = "data_output/Eulo_ITS2_align.fasta")


##################### Cytochrome b ####################
seqs_Eulo_Cyt_b <- read.GenBank(Eulo_Cyt_b, 
                                Eulo_Cyt_b_names,
                                as.character = T)
names(seqs_Eulo_Cyt_b) <- Eulo_Cyt_b_names

write.fasta(seqs_Eulo_Cyt_b, Eulo_Cyt_b_names,
            file="data_output/Eulo_Cyt_b.fasta")

#alignement
dnabin_Eulo_Cyt_b <- as.DNAbin(seqs_Eulo_Cyt_b)
muscle(dnabin_Eulo_Cyt_b, exec = "muscle",
       MoreArgs = "", quiet = TRUE,
       file = "data_output/Eulo_Cyt_b_align.fasta")
