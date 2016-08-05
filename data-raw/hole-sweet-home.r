library(tidyr)

## doubly nested tibbles
## (basically same as sp nested rings)
home <- spbabel::holey %>%
  nest(x_, y_, order_, .key = "coords") %>%
  nest(-object_, .key = "part")

home$name <- c("Wall", "Roof", "Door")
home$colour <- c("firebrick", "dodgerblue", "pink")
home$FAD <- c(6, 4, 1)
devtools::use_data(home, compress = "xz")
