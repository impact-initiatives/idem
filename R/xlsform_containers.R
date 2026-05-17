#' Get container row identifiers from an XLSForm
#'
#' Returns `"type:name"` identifiers for structural container rows — those
#' whose `type` starts with `"begin_"` or `"end_"` (e.g. `begin_group`,
#' `end_group`, `begin_repeat`, `end_repeat`). Rows where `name` is `NA` are
#' excluded.
#'
#' Because XLSForm requires `begin_X` and `end_X` pairs to share the same
#' `name`, bare names are ambiguous for comparison. Using `"type:name"` makes
#' each row uniquely identifiable, so [validate_question_names()] can detect a
#' missing `end_group` even when its matching `begin_group` is present.
#'
#' @param x An `xlsform` object.
#' @param ... Ignored; present for S3 method compatibility.
#'
#' @return A character vector of `"type:name"` identifiers for container rows.
#'
#' @seealso [xlsform_questions()] for non-container question names;
#'   [validate_question_names()] for cross-form comparison.
#'
#' @export
#'
#' @examples
#' form <- read_xlsform(system.file("extdata/form.xlsx", package = "idem"))
#'
#' # All container identifiers in the form
#' xlsform_containers(form)
xlsform_containers <- function(x, ...) UseMethod("xlsform_containers")

#' @export
#' @rdname xlsform_containers
xlsform_containers.default <- function(x, ...) {
  cli::cli_abort(
    "{.arg x} must be an {.cls xlsform} object, not {.obj_type_friendly {x}}."
  )
}

is_container_type <- function(type) grepl("^(begin|end)[_ ]", type)

#' @export
#' @rdname xlsform_containers
xlsform_containers.xlsform <- function(x, ...) {
  survey <- x$survey
  rows <- survey[is_container_type(survey$type) & !is.na(survey$name), ]
  paste(rows$type, rows$name, sep = ":")
}
