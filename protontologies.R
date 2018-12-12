setwd("/Users/jack/Documents/ThesisMasterFolder /ProteinOntologies ") # This is a mac path

meso_seq <- strsplit(scan("540_Mesophiles.txt", what = "list", sep = " "), split = TRUE) 

therm_seq <- strsplit(scan("540_Thermophiles.txt", what = "list", sep = " "), split = TRUE) 

# Both mesophiles and thermophiles are saved as strings. 

source("http://bioconductor.org/biocLite.R") # Get bioconudoctor 
biocLite("Biostrings") # load biostirngs 

library("annotate")
library("XML")
library("methods")

prot_species_meso = vector(mode = "list", length= 540)


for (j in 203:length(meso_seq)){
	
query = meso_seq[j]
res = blastSequences(query,"nr", hitListSize=1, timeout= 10000, program = "blastp", as = "data.frame") # query sequence using blastp 
# returns info as data.frame so we have to find the name and species of the organisms with the best match, this is the first one in the list and we pull the info form the xml blob with the following: 

prot_species_meso[j] <- res$Hit_def

} 

# prot_species_therm = vector(mode = "list", length= 540)

for (j in 44:length(therm_seq)){
	
query = therm_seq[j]
res = blastSequences(query,"nr", hitListSize=1,timeout=10000, program = "blastp", as = "data.frame") # query sequence using blastp 
# returns info as data.frame so we have to find the name and species of the organisms with the best match, this is the first one in the list and we pull the info form the xml blob with the following: 

prot_species_therm[j] <- res$Hit_def

} 

#Save to text file using the following: 

# lapply(prot_species_meso, write, "mesophile_prot_species.txt", append = TRUE, sep = "\n)