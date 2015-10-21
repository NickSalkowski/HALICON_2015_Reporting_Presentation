iris_split <- split(
  x = iris[-5], 
  f = iris$Species)
system.time({
  for (i in names(iris_split)) {
    rmarkdown::render(
      "iris_markdown.Rmd",
      output_format = "word_document",
      output_file = paste0(i, ".docx"),
      output_dir = "rmarkdown_docx",
      params = list(species = i),
      quiet = TRUE)
  }
})
list.files("rmarkdown_docx")
