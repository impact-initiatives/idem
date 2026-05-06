# MSNA template XLSForm (required questions)

An `xlsform` object containing the required questions from the
Multi-Sector Needs Assessment (MSNA) template form. This dataset serves
as the reference (development) form against which collected XLSForms can
be validated with
[`validate_xlsform()`](https://impact-initiatives.github.io/idem/reference/validate_xlsform.md).

## Usage

``` r
msna_template_required
```

## Format

An `xlsform` object — a named list of two tibbles with class
`c("xlsform", "list")`:

**`survey`** — 313 rows × 17 columns: \# nolint: line_length_linter.

- type:

  XLSForm question type (e.g. `"select_one"`, `"integer"`).

- name:

  Variable name.

- `label::english (en)`:

  Question label in English.

- `label::french (fr)`:

  Question label in French.

- `hint::english (en)`:

  Enumerator hint in English.

- `hint::french (fr)`:

  Enumerator hint in French.

- calculation:

  XLSForm calculation expression.

- required:

  Whether the question is required (`TRUE`/`FALSE`/`NA`).

- relevant:

  XLSForm relevance expression.

- constraint:

  XLSForm constraint expression.

- default:

  Default value.

- repeat_count:

  Repeat count expression for repeat groups.

- `constraint_message::english (en)`:

  Constraint violation message in English.

- `constraint_message::french (fr)`:

  Constraint violation message in French.

- appearance:

  XLSForm appearance attribute.

- choice_filter:

  Choice filter expression.

- parameters:

  Additional XLSForm parameters.

**`choices`** — 2483 rows × 8 columns: \# nolint: line_length_linter.

- list_name:

  Choice list identifier referenced in `survey$type`.

- name:

  Choice option value.

- `label::english (en)`:

  Choice label in English.

- `label::french (fr)`:

  Choice label in French.

- parent_country:

  Country-level cascade filter value.

- parent_admin1:

  Admin1-level cascade filter value.

- parent_admin2:

  Admin2-level cascade filter value.

- parent_admin3:

  Admin3-level cascade filter value.

## Source

Derived from the MSNA template XLSForm bundled in
`inst/extdata/form.xlsx`. Regenerate with
`data-raw/msna_template_required.R`.

## Versioning

The dataset carries a `version` attribute recording the package version
under which it was generated. Inspect it with:

    attr(msna_template_required, "version")

The dataset is updated in lockstep with package releases, so the version
attribute ties each snapshot of the reference form to a specific
release.

## See also

[`read_xlsform()`](https://impact-initiatives.github.io/idem/reference/read_xlsform.md),
[`validate_xlsform()`](https://impact-initiatives.github.io/idem/reference/validate_xlsform.md)

## Examples

``` r
msna_template_required
#> <xlsform> NA
#> • survey: 313 rows
#> • choices: 2483 rows

xlsform_questions(msna_template_required)
#>   [1] "audit"                                                     
#>   [2] "start"                                                     
#>   [3] "end"                                                       
#>   [4] "today"                                                     
#>   [5] "deviceid"                                                  
#>   [6] "instance_name"                                             
#>   [7] "introduction"                                              
#>   [8] "survey_modality"                                           
#>   [9] "enum_id"                                                   
#>  [10] "admin1"                                                    
#>  [11] "admin2"                                                    
#>  [12] "admin3"                                                    
#>  [13] "consent"                                                   
#>  [14] "consent_no_note"                                           
#>  [15] "intro_hh"                                                  
#>  [16] "introduction"                                              
#>  [17] "consented"                                                 
#>  [18] "demographics"                                              
#>  [19] "resp_gender"                                               
#>  [20] "resp_age"                                                  
#>  [21] "resp_hoh_yn"                                               
#>  [22] "hoh_gender"                                                
#>  [23] "hoh_age"                                                   
#>  [24] "setting"                                                   
#>  [25] "hh_size"                                                   
#>  [26] "repeat_intro_hh"                                           
#>  [27] "roster"                                                    
#>  [28] "parent_instance_name"                                      
#>  [29] "person_id"                                                 
#>  [30] "ind_pos"                                                   
#>  [31] "ind_name"                                                  
#>  [32] "ind_gender"                                                
#>  [33] "ind_age"                                                   
#>  [34] "ind_age_under1"                                            
#>  [35] "ind_under5_date_know"                                      
#>  [36] "ind_under5_date"                                           
#>  [37] "ind_under5_event"                                          
#>  [38] "ind_dob_final"                                             
#>  [39] "ind_under5_age_months"                                     
#>  [40] "ind_under5_age_years"                                      
#>  [41] "note_child_age_under5"                                     
#>  [42] "check_age_under5"                                          
#>  [43] "note_child_age_under5_mismatch"                            
#>  [44] "ind_age_below18"                                           
#>  [45] "ind_age_2_11"                                              
#>  [46] "ind_f"                                                     
#>  [47] "ind_age_5_17"                                              
#>  [48] "ind_m_age_5_17"                                            
#>  [49] "ind_f_age_5_17"                                            
#>  [50] "ind_age_0_1"                                               
#>  [51] "ind_age_0_4"                                               
#>  [52] "ind_age_0_5"                                               
#>  [53] "ind_f_age_above18"                                         
#>  [54] "ind_m_age_above18"                                         
#>  [55] "ind_woman_repr_age"                                        
#>  [56] "ind_age_schooling"                                         
#>  [57] "roster"                                                    
#>  [58] "ind_age_2_11_n"                                            
#>  [59] "ind_f_n"                                                   
#>  [60] "ind_age_5_17_n"                                            
#>  [61] "ind_m_age_5_17_n"                                          
#>  [62] "ind_f_age_5_17_n"                                          
#>  [63] "ind_age_0_1_n"                                             
#>  [64] "ind_age_0_4_n"                                             
#>  [65] "ind_age_0_5_n"                                             
#>  [66] "ind_f_age_above18_n"                                       
#>  [67] "ind_m_age_above18_n"                                       
#>  [68] "ind_age_above18_n"                                         
#>  [69] "ind_age_below18_n"                                         
#>  [70] "ind_age_schooling_n"                                       
#>  [71] "ind_women_repr_age_n"                                      
#>  [72] "demographics"                                              
#>  [73] "displacement"                                              
#>  [74] "note_dis_hh"                                               
#>  [75] "dis_forced"                                                
#>  [76] "dis_area_origin"                                           
#>  [77] "dis_reasons"                                               
#>  [78] "other_dis_reasons"                                         
#>  [79] "displacement"                                              
#>  [80] "aap"                                                       
#>  [81] "cpa_priority_challenge_note"                               
#>  [82] "cpa_preferred_modality_1"                                  
#>  [83] "other_cpa_preferred_modality_1"                            
#>  [84] "cpa_priority_support_ngo_1"                                
#>  [85] "other_cpa_priority_support_ngo_1"                          
#>  [86] "cpa_preferred_modality_2"                                  
#>  [87] "other_cpa_preferred_modality_2"                            
#>  [88] "cpa_priority_support_ngo_2"                                
#>  [89] "other_cpa_priority_support_ngo_2"                          
#>  [90] "aap_received_assistance_12m"                               
#>  [91] "aap_received_assistance_type"                              
#>  [92] "other_aap_received_assistance_type"                        
#>  [93] "aap_relevance_assistance"                                  
#>  [94] "aap_relevance_assistance_reason"                           
#>  [95] "other_aap_relevance_assistance_reason"                     
#>  [96] "aap_satisfaction_assistance"                               
#>  [97] "aap_assistance_improves_living_conditions"                 
#>  [98] "other_aap_assistance_improves_living_conditions"           
#>  [99] "aap_assistance_improves_living_conditions_challenges"      
#> [100] "other_aap_assistance_improves_living_conditions_challenges"
#> [101] "aap_assistance_coverage"                                   
#> [102] "aap"                                                       
#> [103] "edu"                                                       
#> [104] "edu_ind"                                                   
#> [105] "edu_ind_pos"                                               
#> [106] "edu_person_id"                                             
#> [107] "edu_ind_age"                                               
#> [108] "edu_ind_gender"                                            
#> [109] "edu_ind_age_schooling"                                     
#> [110] "edu_ind_name"                                              
#> [111] "edu_ind_gender_en"                                         
#> [112] "edu_ind_gender_fr"                                         
#> [113] "edu_access"                                                
#> [114] "edu_level_grade"                                           
#> [115] "edu_disrupted_hazards"                                     
#> [116] "edu_disrupted_teacher"                                     
#> [117] "edu_disrupted_displaced"                                   
#> [118] "edu_disrupted_attack"                                      
#> [119] "edu_barrier"                                               
#> [120] "other_edu_barrier"                                         
#> [121] "edu_ind"                                                   
#> [122] "edu"                                                       
#> [123] "shelter"                                                   
#> [124] "snfi_shelter_type"                                         
#> [125] "snfi_shelter_type_individual"                              
#> [126] "other_snfi_shelter_type_individual"                        
#> [127] "snfi_shelter_damage"                                       
#> [128] "other_snfi_shelter_damage"                                 
#> [129] "snfi_shelter_issue"                                        
#> [130] "other_snfi_shelter_issue"                                  
#> [131] "snfi_fds_cooking"                                          
#> [132] "snfi_fds_cooking_issue"                                    
#> [133] "other_snfi_fds_cooking_issue"                              
#> [134] "snfi_fds_sleeping"                                         
#> [135] "snfi_fds_sleeping_issue"                                   
#> [136] "other_snfi_fds_sleeping_issue"                             
#> [137] "snfi_fds_storing"                                          
#> [138] "snfi_fds_storing_issue"                                    
#> [139] "other_snfi_fds_storing_issue"                              
#> [140] "snfi_essential_items_missing"                              
#> [141] "other_snfi_essential_items_missing"                        
#> [142] "shelter"                                                   
#> [143] "energy"                                                    
#> [144] "energy_lighting_source"                                    
#> [145] "other_energy_lighting_source"                              
#> [146] "energy"                                                    
#> [147] "hlp"                                                       
#> [148] "hlp_occupancy"                                             
#> [149] "other_hlp_occupancy"                                       
#> [150] "hlp_risk_eviction"                                         
#> [151] "hlp_threat_eviction"                                       
#> [152] "hlp"                                                       
#> [153] "wash"                                                      
#> [154] "wash_note"                                                 
#> [155] "wash_drinking_water_source"                                
#> [156] "other_wash_drinking_water_source"                          
#> [157] "wash_drinking_water_time_yn"                               
#> [158] "wash_drinking_water_time_int"                              
#> [159] "wash_drinking_water_time_sl"                               
#> [160] "wash_hwise_drink"                                          
#> [161] "wash_hwise_hands"                                          
#> [162] "wash_hwise_worry"                                          
#> [163] "wash_hwise_plans"                                          
#> [164] "wash_sanitation_facility"                                  
#> [165] "other_wash_sanitation_facility"                            
#> [166] "wash_sanitation_facility_sharing_yn"                       
#> [167] "wash_sanitation_facility_sharing_n"                        
#> [168] "wash_handwashing_facility"                                 
#> [169] "other_wash_handwashing_facility"                           
#> [170] "wash_handwashing_facility_observed_water_yn"               
#> [171] "wash_handwashing_facility_reported"                        
#> [172] "other_wash_handwashing_facility_reported"                  
#> [173] "wash_handwashing_facility_water_reported_yn"               
#> [174] "wash_soap_observed_yn"                                     
#> [175] "wash_soap_observed_type"                                   
#> [176] "other_wash_soap_observed_type"                             
#> [177] "wash_soap_reported_yn"                                     
#> [178] "wash_soap_reported_type"                                   
#> [179] "other_wash_soap_reported_type"                             
#> [180] "wash"                                                      
#> [181] "fsl"                                                       
#> [182] "fsl_fcs_cereal"                                            
#> [183] "fsl_fcs_legumes"                                           
#> [184] "fsl_fcs_dairy"                                             
#> [185] "fsl_fcs_meat"                                              
#> [186] "fsl_fcs_veg"                                               
#> [187] "fsl_fcs_fruit"                                             
#> [188] "fsl_fcs_oil"                                               
#> [189] "fsl_fcs_sugar"                                             
#> [190] "fsl_fcs_condiments"                                        
#> [191] "fsl_rcsi_note"                                             
#> [192] "fsl_rcsi_lessquality"                                      
#> [193] "fsl_rcsi_borrow"                                           
#> [194] "fsl_rcsi_mealsize"                                         
#> [195] "fsl_rcsi_mealadult"                                        
#> [196] "fsl_rcsi_mealnb"                                           
#> [197] "fsl_hhs_nofoodhh"                                          
#> [198] "fsl_hhs_nofoodhh_freq"                                     
#> [199] "fsl_hhs_sleephungry"                                       
#> [200] "fsl_hhs_sleephungry_freq"                                  
#> [201] "fsl_hhs_alldaynight"                                       
#> [202] "fsl_hhs_alldaynight_freq"                                  
#> [203] "fsl_lcsi_note"                                             
#> [204] "fsl_lcsi_stress1"                                          
#> [205] "fsl_lcsi_stress2"                                          
#> [206] "fsl_lcsi_stress3"                                          
#> [207] "fsl_lcsi_stress4"                                          
#> [208] "fsl_lcsi_crisis1"                                          
#> [209] "fsl_lcsi_crisis2"                                          
#> [210] "fsl_lcsi_crisis3"                                          
#> [211] "fsl_lcsi_emergency1"                                       
#> [212] "fsl_lcsi_emergency2"                                       
#> [213] "fsl_lcsi_emergency3"                                       
#> [214] "fsl_lcsi_other_reason"                                     
#> [215] "other_fsl_lcsi_other_reason"                               
#> [216] "fsl_lcsi_en_stress1"                                       
#> [217] "fsl_lcsi_en_stress2"                                       
#> [218] "fsl_lcsi_en_stress3"                                       
#> [219] "fsl_lcsi_en_stress4"                                       
#> [220] "fsl_lcsi_en_crisis1"                                       
#> [221] "fsl_lcsi_en_crisis2"                                       
#> [222] "fsl_lcsi_en_crisis3"                                       
#> [223] "fsl_lcsi_en_emergency1"                                    
#> [224] "fsl_lcsi_en_emergency2"                                    
#> [225] "fsl_lcsi_en_emergency3"                                    
#> [226] "fsl_lcsi_en_other_reason"                                  
#> [227] "other_fsl_lcsi_en_other_reason"                            
#> [228] "fsl"                                                       
#> [229] "cm"                                                        
#> [230] "cm_income_total"                                           
#> [231] "cm_expenditure_frequent"                                   
#> [232] "other_cm_expenditure_frequent"                             
#> [233] "cm_expenditure_frequent_note"                              
#> [234] "cm_expenditure_frequent_food"                              
#> [235] "cm_expenditure_frequent_rent"                              
#> [236] "cm_expenditure_frequent_water"                             
#> [237] "cm_expenditure_frequent_nfi"                               
#> [238] "cm_expenditure_frequent_utilities"                         
#> [239] "cm_expenditure_frequent_fuel"                              
#> [240] "cm_expenditure_frequent_transportation"                    
#> [241] "cm_expenditure_frequent_communication"                     
#> [242] "cm_expenditure_frequent_other"                             
#> [243] "cm_expenditure_infrequent"                                 
#> [244] "other_cm_expenditure_infrequent"                           
#> [245] "cm_expenditure_infrequent_note"                            
#> [246] "cm_expenditure_infrequent_shelter"                         
#> [247] "cm_expenditure_infrequent_clothing"                        
#> [248] "cm_expenditure_infrequent_nfi"                             
#> [249] "cm_expenditure_infrequent_health"                          
#> [250] "cm_expenditure_infrequent_education"                       
#> [251] "cm_expenditure_infrequent_debt"                            
#> [252] "cm_expenditure_infrequent_other"                           
#> [253] "cm"                                                        
#> [254] "health"                                                    
#> [255] "health_ind"                                                
#> [256] "health_ind_pos"                                            
#> [257] "health_person_id"                                          
#> [258] "health_ind_age"                                            
#> [259] "health_ind_gender"                                         
#> [260] "health_ind_name"                                           
#> [261] "health_ind_gender_fr"                                      
#> [262] "health_ind_healthcare_needed"                              
#> [263] "health_ind_healthcare_needed_y"                            
#> [264] "health_ind_healthcare_received"                            
#> [265] "health_ind"                                                
#> [266] "health_ind_healthcare_needed_n"                            
#> [267] "health_facility_time"                                      
#> [268] "health"                                                    
#> [269] "nutrition"                                                 
#> [270] "nut_ind"                                                   
#> [271] "nut_ind_pos"                                               
#> [272] "nut_person_id"                                             
#> [273] "nut_ind_age"                                               
#> [274] "nut_ind_gender"                                            
#> [275] "nut_ind_name"                                              
#> [276] "nut_ind_age_0_4"                                           
#> [277] "nut_ind_under5_age_months"                                 
#> [278] "nut_ind_age_vitamina"                                      
#> [279] "nut_ind_age_deworming"                                     
#> [280] "nut_ind_under5_sick_yn"                                    
#> [281] "nut_ind_under5_sick_symptoms"                              
#> [282] "other_nut_ind_under5_sick_symptoms"                        
#> [283] "nut_ind"                                                   
#> [284] "nut_treat_acute_malnutrition"                              
#> [285] "nutrition"                                                 
#> [286] "protection"                                                
#> [287] "prot_needs_intro"                                          
#> [288] "prot_needs_1_services"                                     
#> [289] "prot_needs_1_justice"                                      
#> [290] "prot_needs_2_activities"                                   
#> [291] "prot_needs_2_social"                                       
#> [292] "prot_needs_3_movement"                                     
#> [293] "other_prot_needs_3_movement"                               
#> [294] "prot_concern_freq_gbv_areas"                               
#> [295] "prot_concern_freq_gbv_areas_type"                          
#> [296] "prot_concern_impact"                                       
#> [297] "prot_ind"                                                  
#> [298] "prot_ind_pos"                                              
#> [299] "prot_person_id"                                            
#> [300] "prot_ind_age"                                              
#> [301] "prot_ind_gender"                                           
#> [302] "prot_ind_name"                                             
#> [303] "prot_child_work"                                           
#> [304] "prot_child_labour"                                         
#> [305] "prot_ind"                                                  
#> [306] "ch_pr_behaviour_change"                                    
#> [307] "other_ch_pr_behaviour_change"                              
#> [308] "durable_solutions"                                         
#> [309] "ds_plans"                                                  
#> [310] "ds_plans_timeline"                                         
#> [311] "durable_solutions"                                         
#> [312] "consented"                                                 

attr(msna_template_required, "version")
#> [1] "2026.4.27"
```
