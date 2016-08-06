#' ggpolypath.
#'
#' @name ggpolypath
#' @docType package
NULL

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
#' geom_polypath() + facet_wrap(~object_, nrow = nrow(dathome))
#'
#'
#' @name dathome
#' @docType data
NULL

#' @name maphome
#' @rdname dathome
#' @docType data
NULL
