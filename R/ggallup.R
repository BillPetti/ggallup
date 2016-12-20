#' Apply Gallup-specific formatting to ggplot objects
#'
#' @param plot A ggplot object to apply the formatting to
#' @description Use gallup() when creating a plots that will be used in PowerPoint; use gallup_markdown() when creating plots for markdown documents
#' @export
#' @examples
#' \dontrun{ggallup(plot)}

ggallup <- function(plot) {
  plot_gallup <- plot +
    theme_gallup()
  plot_gallup
}

ggallup_markdown <- function(plot) {
  plot_gallup <- plot +
    theme_gallup_md()
  plot_gallup
}
