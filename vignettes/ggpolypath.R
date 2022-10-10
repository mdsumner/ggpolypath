## ---- include = FALSE---------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)

## -----------------------------------------------------------------------------
library(ggpolypath)

ggplot(maphome) + aes(x = x_, y = y_, group = branch_, fill = object_) +
  geom_polypath()


## ----eval=TRUE----------------------------------------------------------------
ggplot(merge(maphome, dathome[, c("object_", "name")])) + 
  aes(x = x_, y = y_, group = branch_, fill = name) + 
  geom_polypath()


## ---- fig.height = 6, fig.width = 6-------------------------------------------
gs <- ggplot(gardenstate)
gs <- gs + aes(x = x, y = y, group = group, fill = id)
gs +  geom_polypath() + geom_path() + coord_equal()


