#library(manifoldr)
#map <- DrawingA("inst/extdata/manifold/Hydrography.map", "Provinces")
#rgdal::writeOGR(map, "inst/extdata/inlandwaters.gpkg", "inlandwaters", "GPKG")

## interesting eh?
#Warning 1: organizePolygons() received a polygon with more than 100 parts. The processing may be really slow.
#You can skip the processing by setting METHOD=SKIP, or only make it analyze counter-clock wise parts by setting METHOD=ONLY_CCW if you can assume that the outline of holes is counter-clock wise defined

gardenstate <- subset(rgdal::readOGR(system.file("extdata/inlandwaters.gpkg", package = "polyggon"), "inlandwaters", stringsAsFactors = FALSE),
                 Province == "South Australia")

gardenstate <- ggplot2::fortify(gardenstate)
gardenstate <- dplyr::rename(gardenstate, x = long, y = lat)

devtools::use_data(gardenstate, compress = "xz")
