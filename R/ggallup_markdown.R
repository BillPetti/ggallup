#' Apply Gallup-specific formatting to ggplot objects used in markdown documents
#'
#' @param plot A ggplot object to apply the formatting to
#' @export
#' @examples
#' \dontrun{ggallup(plot)}

ggallup_markdown <- function(plot) {
  plot_gallup <- plot +
    theme_gallup_md()
  plot_gallup
}
