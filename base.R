install.packages("blogdown") # install the blogdown package
library(blogdown) # load blogdown
new_site(theme = "wowchemy/starter-academic")
file.edit("gitignore")
blogdown::check_site()
navigateconfig/_default/config.yaml
