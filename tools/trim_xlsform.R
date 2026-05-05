in_gha <- identical(Sys.getenv("GITHUB_ACTIONS"), "true")

gha_error <- function(msg) {
  if (in_gha) cat(sprintf("::error::%s\n", msg)) else cat("ERROR:", msg, "\n")
}

xlsform <- Sys.getenv("XLSFORM_PATH", unset = "inst/extdata/form.xlsx")
trim_path <- Sys.getenv(
  "REQUIRED_FORM_PATH",
  unset = "inst/extdata/form_required.xlsx"
)

survey_full <- readxl::read_excel(xlsform, sheet = "survey")
choices <- readxl::read_excel(xlsform, sheet = "choices")
survey_req <- dplyr::filter(survey_full, req == 1)

openxlsx2::write_xlsx(
  list(survey = survey_req, choices = choices),
  trim_path,
  overwrite = TRUE,
  na = ""
)

all_question_names <- na.omit(unique(survey_full$name))
required_question_names <- na.omit(unique(survey_req$name))

other_questions_in_full <- union(
  intersect(paste0("other_", required_question_names), all_question_names),
  intersect(paste0(required_question_names, "_other"), all_question_names)
)
missing_other_questions <- setdiff(
  other_questions_in_full,
  required_question_names
)

if (length(missing_other_questions) > 0) {
  gha_error(paste(
    "other_ questions in full form missing from required:",
    paste(missing_other_questions, collapse = ", ")
  ))
  quit(status = 1)
}

message("OK — other_ coverage check passed.")
