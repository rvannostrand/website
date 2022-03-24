install.packages("blogdown") # install the blogdown package
library(blogdown) # load blogdown
new_site(theme = "wowchemy/starter-academic")
file.edit("gitignore")
blogdown::check_site()
install.packages("rstudioapi")
library(rstudioapi) # to easily navigate to files
rstudioapi::navigateToFile("config.yaml")
blogdown::check_site()
rmarkdown::render("content/post/2020-12-01-r-rmarkdown/index.en.Rmd")
file.remove(c(
  "content/post/2020-12-01-r-rmarkdown/index.en.html"
))
blogdown::edit_draft(c(
  "content/privacy.md",
  "content/terms.md"
))

blogdown::edit_draft("content/privacy.md")
blogdown::build_site(build_rmd = 'content/post/2020-12-01-r-rmarkdown/index.en.Rmd')

