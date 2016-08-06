dathome <- data.frame(name = c("Wall", "Roof", "Door"),
                   colour = c("firebrick", "dodgerblue", "pink"),
                   FAD = c(6, 4, 1),
                   stringsAsFactors = FALSE,
                   object_ = c(1, 2, 3)
                   )
maphome <- spbabel::holey
devtools::use_data(maphome, dathome, compress = "xz")



# library(tidyr)
#
# ## doubly nested tibbles
# ## (basically same as sp nested rings)
# home <- spbabel::holey %>%
#   nest(x_, y_, order_, .key = "coords") %>%
#   nest(-object_, .key = "part")
#
# home$name <- c("Wall", "Roof", "Door")
# home$colour <- c("firebrick", "dodgerblue", "pink")
# home$FAD <- c(6, 4, 1)
# devtools::use_data(home, compress = "xz")
