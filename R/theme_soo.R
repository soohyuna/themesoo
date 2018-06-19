#' A theme for gpplot2
#'
#' @param object A ggplot2 object
#' @return A customized plot with Soo's theme!
#' @example ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'     geom_point() +
#'     theme_soo()
#'
#' @export

theme_soo <- function (fill = "transparent", colour = "transparent") {
  theme_bw(base_size=12, base_family="Avenir") %+replace%
    theme(
      panel.background  = element_blank(),
      plot.background = element_rect(fill=fill, colour=colour),
      plot.title = element_text(hjust = 0.5),
      plot.subtitle = element_text(hjust = 0.5),
      legend.background = element_rect(fill=fill, colour=colour),
      legend.key = element_rect(fill=fill, colour=colour),
      strip.text = element_text(size=12, face = "bold"),
      strip.background = element_rect(colour="black", fill="#7fcdbb")
    )
}
