# Automated-Blastp-Query
The first part of this code is written in R. The program protontologies reads in two text files containing tab seperated amino acid chains
(where the amino acid chains are written using the one letter abbreviation for each amion acid).
The program then queires the blastp data base from NCBI using the blastSequence function from the "annotate" package. The program saves
the first entry that results from the query into the associated vector and proceeds to the next iteration. The program will wait 10000 seconds
for its query to go through to blastp, and will prompt the user after 10000 seconds if they would like to wait another 10000 seconds. 

To save the resulting vector of queries one uses the lapply command to write each list to a text file, where entries are seperated by tabs.  

The second progam is written in Matlab. The program reads the text file produced by protontologies and takes only the first part of the 
information returend by the blastp query that corresponds to the protein and species. It does this by finding the first appearance of the
">", and collects all of the characters that appear before that symbol (the protein and species names). The program then writes 
this information into a new text file where each amino acid chain's protein and spcies occupy their own line. 
