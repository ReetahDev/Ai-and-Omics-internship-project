# Assignment 2 

DEGs1 <- read.csv(file.choose(), stringsAsFactors = FALSE)
DEGs2 <- read.csv(file.choose(),stringsAsFactors = FALSE)
head(DEGs1)
head(DEGs2)
str(DEGs1)
 str(DEGs2)
 
sum(is.na(DEGs1$padj))
sum(is.na(DEGs1$logFC))
sum(is.na(DEGs2$padj))
sum(is.na(DEGs2$logFC))
sum(is.na(DEGs2$Gene_Id))

DEGs1$padj[is.na(DEGs1$padj)] <- 1
DEGs2$padj[is.na(DEGs2$padj)]<- 1

classify_gene <- function(logFC, padj) {
  if (is.na(padj)) padj <- 1
  if (is.na(logFC)) return("Not_Significant")
  if (logFC > 1 && padj < 0.05) {
    return("Upregulated")
  } else if (logFC < -1 && padj < 0.05) {
    return("Downregulated")
  } else {
    return("Not_Significant")
  }
}

print(classify_gene(2.5, 0.01))   
print(classify_gene(-2.5, 0.01))  
print(classify_gene(0.2, 0.2))    

DEGs1$status <- rep(NA_character_, nrow(DEGs1))
DEGs2$status <- rep(NA_character_, nrow(DEGs2))

DEGs1$status <- rep(NA_character_, nrow(DEGs1))
for (i in seq_len(nrow(DEGs1))) {
  DEGs1$status[i] <- classify_gene(DEGs1$logFC[i], DEGs1$padj[i])
}
head(DEGs1)
DEGs2$status <- rep(NA_character_, nrow(DEGs2))
for (i in seq_len(nrow(DEGs1))) {
  DEGs2$status[i] <- classify_gene(DEGs2$logFC[i], DEGs2$padj[i])
}
head(DEGs2)
 
cat("DEGs1 summary:\n")
cat("\nDEGs2 summary:\n")

print(table(DEGs1$status))
print(table(DEGs2$status))

if (!dir.exists("Results")) dir.create("Results")
write.csv(DEGs1, "Results/DEGs_Data_1_processed.csv", row.names = FALSE)
write.csv(DEGs2, "Results/DEGs_Data_2_processed.csv", row.names = FALSE)

file.exists("Assignment2_DEG_processing.")




