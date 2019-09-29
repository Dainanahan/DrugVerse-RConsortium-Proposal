proposal<-"DrugVerse-RConsortium-Proposal"
proposal.file<-"isc-proposal.Rmd"
author<-"Mohammed Ali"

rmarkdown::render(proposal.file, output_format="html_document",
                  output_dir="out", quiet=TRUE)
rmarkdown::render(proposal.file, output_format="pdf_document",
                  output_dir="out", quiet=TRUE)
rmarkdown::render(proposal.file, output_format="github_document",
                  output_dir="out", quiet=TRUE)