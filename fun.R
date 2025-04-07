# Bunch of packages that are just fun or at least not serious
library(dadjokeapi)
groan(sting = TRUE)
groan_search("son")$id
x <- groan_image("iVSClyXDQf")

library(beepr)
help(package = "beepr")

for(i in 1:11){
  beep(i)
  Sys.sleep(2)
}

devtools::install_github("brooke-watson/BRRR")
library(BRRR)
skrrrahh(sound = 39)

devtools::install_github("sckott/cowsay")
library(cowsay)
help(package = "cowsay")

devtools::install_github("R-CoderDotCom/ggcats")
library(ggcats)
library("ggplot2")
ggplot(mtcars) +
  geom_cat(aes(mpg, wt), cat = "pusheen", size = 5)
