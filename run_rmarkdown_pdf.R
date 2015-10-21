setwd("C:\\Users\\NSalkowski\\Documents\\R Projects\\HALICON")
iris_split <- split(
  x = iris[-5], 
  f = iris$Species)
system.time({
  for (i in names(iris_split)) {
    rmarkdown::render(
      "iris_markdown.Rmd",
      output_format = "pdf_document",
      output_file = paste0(i, ".pdf"),
      output_dir = "rmarkdown_pdf",
      params = list(species = i),
      quiet = TRUE)
  }
})
list.files("rmarkdown_pdf")
