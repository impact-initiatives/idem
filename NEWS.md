
# idem 2026.5.6

## MSNA template

* Fixed skip logic syntax for `prot_concern_freq_gbv_areas` and `prot_concern_freq_gbv_areas_type` GBV questions.


# idem 2026.5.5

## MSNA template

* Bundled reference template updated to `MSNA_2026_KOBO_Form_20260501`, then `MSNA_2026_KOBO_Form_20260504`.
* Fixed required variable references in the bundled template.

## Bug fixes

* `validate_xlsform()` now correctly detects trim violations for both `other_X` and `X_other` column naming patterns.

# idem 2026.4.27

* First release. Version tied to the MSNA 2026 XLSForm template (20260427).
* Read XLSForms with `read_xlsform()`.
* Validate a target form against a reference form with `validate_xlsform()`, `validate_choices()`, `validate_list_names()`, `validate_question_names()`, and `validate_survey_list_names()`.
* Inspect form structure with `xlsform_questions()`, `xlsform_choices()`, `xlsform_defined_list_names()`, and `xlsform_referenced_list_names()`.
* Bundled reference dataset `msna_template_required`: required questions from the MSNA 2026 template, versioned in lockstep with the package.
