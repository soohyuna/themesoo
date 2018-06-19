#' A theme for gpplot2
#'
#' @param base_family The font family to be used, defaults to Avenir
#' @param title_size Title size, defaults to 22
#' @param facet_fill Color of facet rectangle, defaults to "#7fcdbb"
#' @param fill Background element rectangles, defaults to "transparent"
#' @param colour Colour option for key, defaults to "transparent"
#' @param title_position Title position, defaults to 0.5
#' @return A customized plot with Soo's theme!
#' @example ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'     geom_point() +
#'     theme_soo()
#'
#' @export

theme_soo <- function (base_family = "Avenir", title_size = 22, facet_fill = "#7fcdbb",
                       fill = "transparent", colour = "transparent", title_position = 0.5) {

  theme_bw(base_size=12, base_family= base_family) %+replace%
    theme(
      panel.background  = element_blank(),
      plot.background = element_rect(fill=fill, colour=colour),
      plot.title = element_text(hjust = title_position, size = title_size),
      plot.subtitle = element_text(hjust = title_position),
      legend.background = element_rect(fill=fill, colour=colour),
      legend.key = element_rect(fill=fill, colour=colour),
      strip.text = element_text(size=12, face = "bold"),
      strip.background = element_rect(colour="black", fill= facet_fill)
    )
}
