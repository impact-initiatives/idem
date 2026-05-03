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

complete_names <- na.omit(unique(survey_full$name))
required_names <- na.omit(unique(survey_req$name))
potential_other <- intersect(paste0("other_", required_names), complete_names)
missing <- setdiff(potential_other, required_names)

if (length(missing) > 0) {
  cat(
    "ERROR: other_ questions in full form missing from required:",
    paste(missing, collapse = ", "),
    "\n"
  )
  quit(status = 1)
}

message("OK — other_ coverage check passed.")
