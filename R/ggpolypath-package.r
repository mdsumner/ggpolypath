#' ggpolypath
#'
#' Tools for working with polygons with holes in 'ggplot2', with a new 'geom' for drawing a 'polypath' applying the 'evenodd' or 'winding' rules.
#' @name ggpolypath
#' @docType package
NULL

`%||%` <- function (a, b)
{
    if (!is.null(a))
        a
    else b
}

#' Simple polygon data
#'
#' A "home" profile of three objects with multiple parts as two related data frames.
#'
#' \code{maphome} is the geometry
#' @format \code{dathome} is the metadata, a data frame with columns:
#' \describe{
#'  \item{name}{A descriptive name}
#'  \item{colour}{A colour to distinguish each object}
#'  \item{FAD}{An arbitrary numeric value}
#'  \item{object_}{Key attribute, linking this object to its geometry in \code{\link{maphome}}}
#' }
#' @format \code{maphome} is the geometry, a data frame with columns:
#' \describe{
#'  \item{object_}{Key attribute, linking this row to its metadata in \code{\link{dathome}}}
#'  \item{branch_}{Group attribute, unique values identify a closed ring}
#'  \item{island_}{Logical, \code{TRUE} for "island" vs. "hole"}
#'  \item{order_}{Numeric value to identify sort order within \code{branch}}
#'  \item{x_,y_}{x and y coordinate}
#'  }
#' @examples
#' ggplot(maphome) + aes(x = x_, y = y_, group = branch_, fill = object_) +
#' geom_polypath() + geom_path() + facet_wrap(~object_, nrow = nrow(dathome))
#'
#'
#' @name dathome
#' @docType data
NULL

#' @name maphome
#' @rdname dathome
#' @docType data
NULL



#' Province polygons with inland waters as holes.
#'
#' A data frame of coordinates and geometry classifiers
#' of the garden state, South Australia.
#'
#' The PROJ.4 string for this map is:
#' \describe{ +proj=lcc +lat_1=-47 +lat_2=-17 +lat_0=-32 +lon_0=136 +x_0=0 +y_0=0
#'  +ellps=WGS84 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs
#'}
#' @format \code{gardenstate} is the geometry, a data frame with columns:
#' \describe{
#'  \item{x,y}{x and y coordinate}
#'  \item{id}{Key attribute for the objects}
#'  \item{piece,part}{Group attribute, unique values identify a closed ring, part is the part 'id' within an object}
#'  \item{hole}{Logical, \code{FALSE} for "island" vs. "hole"}
#'  \item{order}{Numeric value to identify sort order within \code{branch}}

#'  }
#' @examples
#' gs <- ggplot(gardenstate)
#' gs <- gs + aes(x = x, y = y, group = group, fill = id)
#' gs +  geom_polypath() + geom_path()
#'
#' @name gardenstate
#' @docType data
NULL
