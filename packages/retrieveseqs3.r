# Gwen's update (the original function does not seem to work...)
# + Marine's update (the number 2 does not seem to work neither)


retrieveseqs3 <- function(seqnames,acnucdb)
  {
     myseqs <- list()   # Make a list to store the sequences
     require("seqinr")  # This function requires the SeqinR R package
     choosebank(acnucdb)
     for (i in 1:length(seqnames))
     {
        seqname <- seqnames[i]
        print(paste("Retrieving sequence",seqname,"..."))
        queryname <- "query2"
        query <- paste("AC=",seqname,sep="")
        query(`queryname`,`query`)
        seq <- getSequence(query(`queryname`,`query`)$req[[1]])

        myseqs[[i]] <- seq
     }
     closebank()
     return(myseqs)
  }
