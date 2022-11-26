library(ape)
library(seqinr)
source("seqs.R")

#function :
alignement <- function(title){
  codes <- eval(as.symbol(title))
  names <- eval(as.symbol(paste(title, "_names", sep = "")))
  seqs <- read.GenBank(codes, 
                       names,
                       as.character = T)
  names(seqs) <- names
  file_output = paste("data_output/", title, ".fasta", sep = "")
  write.fasta(seqs, names, file=file_output)
  
  #Alignement
  file_output_align = paste("data_output/", title, "_align.fasta", sep = "") 
  dnabin_seqs <- as.DNAbin(seqs)
  muscle(dnabin_seqs, exec = "muscle",
         MoreArgs = "", quiet = TRUE,
         file = file_output_align)
}

list <- c("Cassidinae_28S_D2", "Eulo_28S_D2", "Eulo_ITS2", "Eulo_Cyt_b")

for (x in list){
  alignement(x)
}


#trees ploting

Cassidinae_28S_D2_PhyML_JC69 <- read.tree("trees/Cassidinae_28S_D2_PhyML_JC69.tre")
plot.phylo(Cassidinae_28S_D2_PhyML_JC69, show.node.label = TRUE)

Eulo_28S_D2_PhyML_JC69 <- read.tree("trees/Eulo_28S_D2_PhyML_JC69.tre")
plot.phylo(Eulo_28S_D2_PhyML_JC69, show.node.label = TRUE)

Eulo_ITS2_PhyML_JC69 <- read.tree("trees/Eulo_ITS2_PhyML_JC69.tre")
plot.phylo(Eulo_ITS2_PhyML_JC69, show.node.label = TRUE)

Eulo_Cyt_b_PhyML_JC69 <- read.tree("trees/Eulo_Cyt_b_PhyML_JC69.tre")
plot.phylo(Eulo_Cyt_b_PhyML_JC69, show.node.label = TRUE)


