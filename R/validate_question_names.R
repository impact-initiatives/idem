#' Validate question names between two XLSForms
#'
#' Checks that every question name and structural container present in
#' `target`'s survey sheet also exists in `dev`'s survey sheet. Returns a
#' tibble row for each entry found in `target` but absent from `dev`.
#'
#' Regular questions are compared by bare name via [xlsform_questions()].
#' Structural container rows (`begin_group`, `end_group`, `begin_repeat`,
#' `end_repeat`, etc.) are compared as `"type:name"` pairs via
#' [xlsform_containers()], so a missing `end_group` is detected even when its
#' matching `begin_group` is present.
#'
#' @param target An `xlsform` object representing the authoritative reference
#'   form.
#' @param dev An `xlsform` object representing the form being validated.
#'
#' @return A tibble with columns `check`, `severity`, `name`, `list_name`, and
#'   `detail`. Has zero rows when all questions and containers in `target` are
#'   present in `dev`. Container rows appear as `"type:name"` in the `name`
#'   column (e.g. `"end_group:consented"`).
#'
#' @seealso [validate_xlsform()] to run all checks together;
#'   [xlsform_questions()] to extract question names from a form;
#'   [xlsform_containers()] to extract container identifiers from a form.
#'
#' @export
#'
#' @examples
#' target <- read_xlsform(system.file("extdata/form.xlsx", package = "idem"))
#'
#' # No issues: every question in target also exists in dev
#' validate_question_names(target, target)
#'
#' # Issues found: target has a question that dev is missing
#' extra_row <- target$survey[1L, ]
#' extra_row$name <- "required_question"
#' target_extra <- xlsform(
#'   survey  = rbind(target$survey, extra_row),
#'   choices = target$choices
#' )
#' validate_question_names(target_extra, target)
validate_question_names <- function(target, dev) {
  if (!inherits(target, "xlsform")) {
    cli::cli_abort(
      "{.arg target} must be an {.cls xlsform} object, not \\
      {.obj_type_friendly {target}}."
    )
  }
  if (!inherits(dev, "xlsform")) {
    cli::cli_abort(
      "{.arg dev} must be an {.cls xlsform} object, not \\
      {.obj_type_friendly {dev}}."
    )
  }

  missing_q <- setdiff(xlsform_questions(target), xlsform_questions(dev))
  missing_c <- setdiff(xlsform_containers(target), xlsform_containers(dev))

  rbind(
    tibble::tibble(
      check = "question_names",
      severity = "error",
      name = missing_q,
      list_name = NA_character_,
      detail = paste0(
        "Question '",
        missing_q,
        "' is present in target but not in dev."
      )
    ),
    tibble::tibble(
      check = "question_names",
      severity = "error",
      name = missing_c,
      list_name = NA_character_,
      detail = paste0(
        "Container '",
        missing_c,
        "' is present in target but not in dev."
      )
    )
  )
}
