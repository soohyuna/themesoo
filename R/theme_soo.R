#' A theme for gpplot2
#'
#' @param base_family The font family to be used, defaults to Avenir
#' @param title_size Title size, defaults to 22
#' @param facet_text_size Facet text size, defaults to 12
#' @param facet_fill Color of facet rectangle, defaults to "#7fcdbb"
#' @param facet_height Height of facet box, defaults to 0.3
#' @param fill Background element rectangles, defaults to "transparent"
#' @param colour Colour option for key, defaults to "transparent"
#' @param title_position Title position, defaults to 0.5
#' @param axis_title_size Axis title size, defaults to 14
#' @param axis_tick_size Size of ticks on axes, defaults to 12
#' @return A customized plot with Soo's theme!
#' @example ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'     geom_point() +
#'     facet_wrap(~Species) +
#'     theme_soo()
#'
#' @export

theme_soo <- function (base_family = "Avenir",
                       title_size = 22,
                       facet_text_size = 12,
                       facet_fill = "#7fcdbb",
                       facet_height = 0.3,
                       fill = "transparent",
                       colour = "transparent",
                       title_position = 0.5,
                       axis_title_size = 14,
                       axis_tick_size = 12 ) {

  theme_bw(base_size=12, base_family= base_family) %+replace%
    theme(
      panel.background  = element_blank(),
      plot.background = element_rect(fill = fill, colour = colour),
      plot.title = element_text(hjust = title_position, size = title_size),
      plot.subtitle = element_text(hjust = title_position),
      legend.background = element_rect(fill = fill, colour = colour),
      legend.key = element_rect(fill = fill, colour = colour),
      axis.text = element_text(size = axis_tick_size),
      axis.title = element_text(size = axis_title_size, face = "bold"),
      strip.text = element_text(size = facet_text_size, face = "bold",
                                margin = margin(facet_height, 0,facet_height, 0, "cm")),
      strip.text.y = element_text(size = facet_text_size, face = "bold",
                                  margin = margin(0, facet_height, 0, facet_height, "cm"),
                                  angle = 270),
      strip.background = element_rect(colour = "black", fill = facet_fill)
    )
}
