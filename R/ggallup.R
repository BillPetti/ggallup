#' Apply Gallup-specific formatting to ggplot objects
#'
#' @param plot A ggplot object to apply the formatting to
#' @export
#' @examples
#' \dontrun{ggallup(plot)}

ggallup <- function(plot) {
  plot_gallup <- plot +
    theme_gallup()
  plot_gallup
}
