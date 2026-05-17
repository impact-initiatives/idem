#' Get question names from an XLSForm
#'
#' Returns the values of the `name` column from the `survey` sheet, excluding
#' rows where `name` is `NA` and structural container rows whose `type` starts
#' with `"begin"` or `"end"` followed by an underscore or space (e.g.
#' `begin_group`, `begin group`, `end_repeat`). Use [xlsform_containers()] to
#' retrieve those rows as `"type:name"` identifiers.
#'
#' The returned vector is used internally by [validate_question_names()] to
#' compare question inventories across two forms.
#'
#' @param x An `xlsform` object.
#' @param ... Ignored; present for S3 method compatibility.
#'
#' @return A character vector of non-`NA` question names from the survey sheet.
#'
#' @seealso [xlsform_referenced_list_names()] for list names referenced in the
#'   survey;
#'   [xlsform_defined_list_names()] for list names defined in the choices sheet.
#'
#' @export
#'
#' @examples
#' form <- read_xlsform(system.file("extdata/form.xlsx", package = "idem"))
#'
#' # All question names in the form
#' xlsform_questions(form)
#'
#' # Count questions
#' length(xlsform_questions(form))
xlsform_questions <- function(x, ...) UseMethod("xlsform_questions")

#' @export
#' @rdname xlsform_questions
xlsform_questions.default <- function(x, ...) {
  cli::cli_abort(
    "{.arg x} must be an {.cls xlsform} object, not {.obj_type_friendly {x}}."
  )
}

#' @export
#' @rdname xlsform_questions
xlsform_questions.xlsform <- function(x, ...) {
  survey <- x$survey
  names <- survey$name[!is_container_type(survey$type)]
  names[!is.na(names)]
}
