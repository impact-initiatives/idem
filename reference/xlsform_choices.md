# Get choice options from an XLSForm

Returns a named list of character vectors, where each name is a list
name and each element contains the choice option `name` values for that
list. Both the `choices` sheet and, when present, the `external_choices`
sheet are combined.

## Usage

``` r
xlsform_choices(x, ...)

# Default S3 method
xlsform_choices(x, ...)

# S3 method for class 'xlsform'
xlsform_choices(x, ...)
```

## Arguments

- x:

  An `xlsform` object.

- ...:

  Ignored; present for S3 method compatibility.

## Value

A named list of character vectors. Each name is a list name; each
element is the character vector of option `name` values for that list.
Rows with `NA` in either `list_name` or `name` are silently dropped.

## Details

This is useful for inspecting which options are available for a given
`select_one` or `select_multiple` question, and is used internally by
[`validate_choices()`](https://impact-initiatives.github.io/idem/reference/validate_choices.md)
to compare option sets across two forms.

## See also

[`xlsform_defined_list_names()`](https://impact-initiatives.github.io/idem/reference/xlsform_defined_list_names.md)
for just the list names;
[`validate_choices()`](https://impact-initiatives.github.io/idem/reference/validate_choices.md)
to compare choice options across two forms.

## Examples

``` r
form <- read_xlsform(system.file("extdata/form.xlsx", package = "idem"))

# All choice options, organised by list name
xlsform_choices(form)
#> $cm_income_sources_reduced_1
#>  [1] "regular"           "casual"            "own_business"     
#>  [4] "own_production"    "social_benefits"   "rent"             
#>  [7] "remittances"       "assistance"        "donations_support"
#> [10] "loans"             "other"             "dnk"              
#> [13] "pnta"             
#> 
#> $cm_income_sources_reduced_2
#>  [1] "none"              "regular"           "casual"           
#>  [4] "own_business"      "own_production"    "social_benefits"  
#>  [7] "rent"              "remittances"       "assistance"       
#> [10] "donations_support" "loans"             "other"            
#> [13] "dnk"               "pnta"             
#> 
#> $fsl_crop_area_change
#> [1] "a_lot_more"    "slightly_more" "same"          "slightly_less"
#> [5] "a_lot_less"    "no_planting"   "dnk"           "pnta"         
#> 
#> $fsl_crop_diff
#>  [1] "no_difficulties_faced"   "no_access_to_land"      
#>  [3] "no_tools"                "lack_inputs"            
#>  [5] "crop_diseases_and_pests" "damage_to_croplands"    
#>  [7] "cropland_quality"        "flooding_or_heavy_rain" 
#>  [9] "drought_conditions"      "lack_of_workforce"      
#> [11] "illness_injury"          "fear_of_insecurity"     
#> [13] "fear_uxos"               "other"                  
#> [15] "dnk"                     "pnta"                   
#> 
#> $fsl_crop_harv_change
#> [1] "a_lot_more"    "slightly_more" "same"          "slightly_less"
#> [5] "a_lot_less"    "dnk"           "pnta"         
#> 
#> $fsl_crop_type
#>  [1] "maize"              "teff"               "wheat"             
#>  [4] "barley"             "wheat_barley_mixed" "sorghum"           
#>  [7] "pulses"             "vegetables"         "root_crops"        
#> [10] "fruit_crops"        "chat"               "coffee"            
#> [13] "other"             
#> 
#> $fsl_food_storing
#> [1] "fridge"    "container" "outside"   "other"     "dnk"       "pnta"     
#> 
#> $fsl_liv_act
#>  [1] "no"                  "yes_crop_production" "livestock"          
#>  [4] "yes_fish_production" "crop_livestock"      "crop_fish"          
#>  [7] "livestock_fish"      "yes_all_three"       "dnk"                
#> [10] "pnta"               
#> 
#> $fsl_livestock_change
#>  [1] "did_not_sell_as_many"  "many_more_were_born"   "purchased_more"       
#>  [4] "received_animals"      "livestock_disease"     "animal_death"         
#>  [7] "sold_more"             "distress_sale"         "flooding"             
#> [10] "drought"               "lack_of_water"         "lack_of_fodder"       
#> [13] "lack_vet_vaccination"  "animal_lost_or_stolen" "killed_gifted_animals"
#> [16] "payments_fines"        "bridewealth_payment"   "other"                
#> [19] "dnk"                   "pnta"                 
#> 
#> $fsl_livestock_diff
#>  [1] "diff_feed"          "pasture_access"     "water_access"      
#>  [4] "vet_inputs_access"  "liv_diseases"       "liv_markets_access"
#>  [7] "credit_access"      "labor_access"       "other"             
#> [10] "dnk"                "pnta"              
#> 
#> $fsl_livestock_type
#>  [1] "oxen"    "camel"   "cattle"  "horse"   "mule"    "donkey"  "sheep"  
#>  [8] "goat"    "poultry" "other"   "dnk"     "pnta"   
#> 
#> $l_aap_assistance_improves_living_challenges
#>  [1] "no_additional_challenges"          "increased_dependency"             
#>  [3] "tensions_within_household"         "tensions_within_local_authorities"
#>  [5] "tensions_within_community"         "reduced_opportunities"            
#>  [7] "increased_prices"                  "safety_or"                        
#>  [9] "other"                             "pnta"                             
#> 
#> $l_aap_assistance_improves_living_conditions
#>  [1] "food_consumption"            "nutrition"                  
#>  [3] "access_safe_wash"            "maintain_adequate_shelter"  
#>  [5] "pay_basic_services"          "access_health"              
#>  [7] "education"                   "livelihoods_income"         
#>  [9] "cope_shocks"                 "access_services_safely"     
#> [11] "sense_dignity"               "social_relations"           
#> [13] "other"                       "no_area_better_than_without"
#> 
#> $l_aap_cfm_use
#> [1] "no_feedbacks"          "feedbacks_no_used"     "feedbacks_satisfied"  
#> [4] "feedbacks_unsatisfied" "feedback_no_answers"   "dnk"                  
#> [7] "pnta"                 
#> 
#> $l_aap_consultation_assistance_opinions
#> [1] "very_confident"     "somewhat_confident" "not_confident"     
#> [4] "pnta"              
#> 
#> $l_aap_information_needs
#>  [1] "none"                                
#>  [2] "news"                                
#>  [3] "missing_people"                      
#>  [4] "security_situation"                  
#>  [5] "registration_aid"                    
#>  [6] "water_access"                        
#>  [7] "food_access"                         
#>  [8] "nutrition_information"               
#>  [9] "shelter_housing_access"              
#> [10] "food_livelihood_price"               
#> [11] "fuel_access"                         
#> [12] "weather"                             
#> [13] "healthcare_access"                   
#> [14] "protection_attack_harassment_support"
#> [15] "documentation_service"               
#> [16] "education_access"                    
#> [17] "work_access"                         
#> [18] "transport_access"                    
#> [19] "financial_supoprt"                   
#> [20] "relocation"                          
#> [21] "aid_beneficiaries_information"       
#> [22] "cfm"                                 
#> [23] "hlp_rights"                          
#> [24] "dnk"                                 
#> [25] "pnta"                                
#> [26] "other"                               
#> 
#> $l_aap_preferred_means_feedback
#>  [1] "face_to_face_aidworkers" "face_to_face_community" 
#>  [3] "complaint_box"           "phone_call"             
#>  [5] "sms"                     "instant_messaging"      
#>  [7] "facebook"                "letter"                 
#>  [9] "tweet"                   "radio"                  
#> [11] "other"                   "no_feedbacks"           
#> [13] "no_knowledge"            "dnk"                    
#> [15] "pnta"                   
#> 
#> $l_aap_preferred_source_info
#>  [1] "tv"                 "radio"              "printed_newspapers"
#>  [4] "online_news"        "government"         "community_leader"  
#>  [7] "religious_leader"   "neighbour"          "nngo"              
#> [10] "ingo"               "no_trust"           "no_source"         
#> [13] "dnk"                "pnta"               "other"             
#> 
#> $l_aap_received_assistance_date
#> [1] "past_30d"    "1_3_months"  "4_6_months"  "7_12_months" "dnk"        
#> [6] "pnta"       
#> 
#> $l_aap_received_assistance_type
#>  [1] "cash_unconditional"       "cash_conditional"        
#>  [3] "inkind_food"              "inkind_nfi"              
#>  [5] "service_edu"              "service_health"          
#>  [7] "service_vocational"       "service_farming_land"    
#>  [9] "service_legal"            "infrastructure_wash"     
#> [11] "infrastructure_community" "other"                   
#> [13] "pnta"                    
#> 
#> $l_aap_received_channel_info_aid
#>  [1] "phone_call"          "sms"                 "twitter_x"          
#>  [4] "facebook"            "messaging_platforms" "face_to_face"       
#>  [7] "other_platforms"     "tv"                  "newspapers"         
#> [10] "billboards"          "leaflets"            "loudspeaker"        
#> [13] "other"              
#> 
#> $l_aap_relevance_assistance
#> [1] "all"      "majority" "few"      "none"     "pnta"    
#> 
#> $l_aap_relevance_assistance_reason
#> [1] "poor_quality"       "insufficient"       "delays"            
#> [4] "not_needed_most"    "not_preferred_form" "other"             
#> [7] "pnta"              
#> 
#> $l_aap_satisfaction_assistance
#> [1] "better"          "as_expected"     "worse"           "no_expectations"
#> [5] "pnta"           
#> 
#> $l_aap_satisfaction_challenges
#>  [1] "physical_barriers"           "delays"                     
#>  [3] "lack_information_access_aid" "lack_mean_access"           
#>  [5] "lack_information_use"        "safety"                     
#>  [7] "bribe"                       "discrimination"             
#>  [9] "language_barriers"           "waiting_time"               
#> [11] "no_assistance"               "no_challenges"              
#> [13] "other"                       "pnta"                       
#> 
#> $l_aap_satisfaction_workers_behaviour_reason
#>  [1] "demand_money_service_aid" "discrimination"          
#>  [3] "lack_communication"       "feedback_unanswered"     
#>  [5] "inappropriate_behavior"   "no_information"          
#>  [7] "refusal_registration"     "aid_worker_unavailable"  
#>  [9] "pnta"                     "other"                   
#> 
#> $l_admin1
#> [1] "PCODE1"
#> 
#> $l_admin2
#> [1] "PCODE11"
#> 
#> $l_admin3
#> [1] "PCODE111"
#> 
#> $l_admin4
#> [1] "PCODE1111"
#> 
#> $l_ch_pr_behaviour_change
#>  [1] "no_behavior_changes"          "angry_aggressive"            
#>  [3] "appetite_changes"             "headaches"                   
#>  [5] "bedwetting"                   "nightmares_sleep_issues"     
#>  [7] "stomach_pain"                 "new_or_recurring_fears"      
#>  [9] "clinging_behavior"            "excessive_crying"            
#> [11] "regression_younger_behaviors" "easily_startled"             
#> [13] "substance_use"                "sad_or_withdrawn"            
#> [15] "dnk"                          "other"                       
#> [17] "pnta"                        
#> 
#> $l_cluster_id
#> [1] "cluster_1"
#> 
#> $l_cm_expenditure_frequent
#>  [1] "food"           "rent"           "water"          "nfi"           
#>  [5] "utilities"      "fuel"           "transportation" "communications"
#>  [9] "other"          "no_expenditure" "dnk"            "pnta"          
#> 
#> $l_cm_expenditure_infrequent
#>  [1] "shelter"        "clothing"       "nfi"            "health"        
#>  [5] "education"      "debt"           "other"          "no_expenditure"
#>  [9] "dnk"            "pnta"          
#> 
#> $l_cm_income_source
#>  [1] "salaried"        "casual"          "own_business"    "own_production" 
#>  [5] "social_benefits" "rent"            "remittances"     "assistance"     
#>  [9] "support_friends" "donation"        "other"           "none"           
#> [13] "dnk"             "pnta"           
#> 
#> $l_cm_market_barriers_access
#>  [1] "no_barriers"                 "market_too_far"             
#>  [3] "transport_limited_expensive" "market_insecurity"          
#>  [5] "unsafe_market_buildings"     "insecure_travel_market"     
#>  [7] "road_damage_to_market"       "curfew_movement_restrict"   
#>  [9] "market_limited_hours"        "market_not_accessible_pwd"  
#> [11] "no_child_elderly_care"       "authority_restrict_access"  
#> [13] "hh_members_restrict_access"  "discrimination_market"      
#> [15] "other"                       "dnk"                        
#> [17] "pnta"                       
#> 
#> $l_cm_market_barriers_purchase
#> [1] "no_barriers"         "items_too_expensive" "items_not_available"
#> [4] "no_means_of_payment" "other"               "dnk"                
#> [7] "pnta"               
#> 
#> $l_cm_market_time
#> [1] "less_15_min"       "15_29_min"         "30_59_min"        
#> [4] "1_2_hours"         "more_than_2_hours" "dnk"              
#> [7] "pnta"             
#> 
#> $l_cpa_preferred_modality
#>  [1] "cash_unconditional"       "cash_conditional"        
#>  [3] "inkind_food"              "inkind_nfi"              
#>  [5] "service_edu"              "service_health"          
#>  [7] "service_vocational"       "service_farming_land"    
#>  [9] "service_legal"            "infrastructure_wash"     
#> [11] "infrastructure_community" "other"                   
#> [13] "do_not_want_assistance"   "no_preference"           
#> [15] "pnta"                    
#> 
#> $l_cpa_priority_support_cash
#> [1] "physical_cash" "bank_transfer" "prepaid_cards" "mobile_money" 
#> [5] "voucher"       "none"          "dnk"           "pnta"         
#> 
#> $l_dis_area_origin
#> [1] "in_this_area"              "somewhere_else_in_country"
#> [3] "another_country"           "pnta"                     
#> 
#> $l_dis_challenges
#> [1] "never"     "rarely"    "sometimes" "often"     "always"    "dnk"      
#> [7] "pnta"     
#> 
#> $l_dis_forced
#> [1] "yes_but_back"        "yes_still_displaced" "no_never"           
#> [4] "dnk"                 "pnta"               
#> 
#> $l_dis_reasons
#>  [1] "natural_disaster"              "manmade_disaster"             
#>  [3] "armed_conflict"                "intercommunal_violence"       
#>  [5] "persecution"                   "general_insecurity"           
#>  [7] "social_tension"                "econ_reason_conflict_related" 
#>  [9] "limited_services_conflict"     "econ_reason_non_conflict"     
#> [11] "limited_services_non_conflict" "other"                        
#> [13] "dnk"                           "pnta"                         
#> 
#> $l_dis_secondary_n
#> [1] "once"                 "twice"                "three_times"         
#> [4] "four_times"           "five_times"           "more_than_five_times"
#> [7] "dnk"                  "pnta"                
#> 
#> $l_ds_plans
#> [1] "stay_current_location"  "move_elsewhere_country" "return_to_origin"      
#> [4] "move_abroad"            "no_concrete_plan"       "dnk"                   
#> [7] "pnta"                  
#> 
#> $l_ds_plans_timeline
#> [1] "within_3_months"     "between_3_6_months"  "between_6_12_months"
#> [4] "after_one_year"      "dnk"                 "pnta"               
#> 
#> $l_edu_barrier
#>  [1] "costs"                     "child_work_home"          
#>  [3] "child_work_outside"        "child_too_young"          
#>  [5] "child_graduated"           "lack_interest"            
#>  [7] "not_priority"              "protection_at_school"     
#>  [9] "protection_travel_school"  "child_armed_group"        
#> [11] "child_marriage"            "child_pregnancy"          
#> [13] "child_health"              "lack_accessible_school"   
#> [15] "curriculum_not_useful"     "lack_classrooms"          
#> [17] "lack_wash_facilities"      "school_closed"            
#> [19] "lack_teacher"              "language"                 
#> [21] "ban"                       "enroll_lack_documentation"
#> [23] "enroll_displacement"       "discrimination"           
#> [25] "other"                     "dnk"                      
#> [27] "pnta"                     
#> 
#> $l_edu_community_modality
#>  [1] "none"                          "open_more_schools"            
#>  [3] "improve_infra"                 "improve_wash"                 
#>  [5] "improve_security_way"          "training"                     
#>  [7] "improve_salary"                "qualified_teachers"           
#>  [9] "modify_curriculum_certificate" "provide_technical"            
#> [11] "provide_accelerated_pg"        "provide_mhpss"                
#> [13] "provide_learningmaterial"      "cash_for_edu"                 
#> [15] "transportation"                "improve_cwd"                  
#> [17] "awaress_activities"            "provide_enrolment"            
#> [19] "dnk"                           "pnta"                         
#> 
#> $l_edu_financial_barrier
#>  [1] "cost_transportation" "cost_tuition"        "cost_materials"     
#>  [4] "cost_salaries"       "cost_uniform"        "cost_schoolfeeding" 
#>  [7] "cost_admin"          "cost_childlabor"     "cost_childmarriage" 
#> [10] "cost_admin2"         "other_specify"       "dnk"                
#> [13] "pnta"               
#> 
#> $l_edu_level_grade
#> [1] "level1_grade1"  "level1_grade2"  "level2_grade_1" "level2_grade_2"
#> [5] "level2_grade_3"
#> 
#> $l_edu_other_yn
#> [1] "nonformal_school1" "nonformal_school2" "nonformal_school3"
#> [4] "nonformal_school4" "nonformal_school5"
#> 
#> $l_energy_lighting_source
#>  [1] "electricity"             "solar_flashlight"       
#>  [3] "rechargeable_flashlight" "battery_flashlight"     
#>  [5] "biogas"                  "gasoline"               
#>  [7] "candle"                  "open_fire"              
#>  [9] "none"                    "other"                  
#> [11] "dnk"                     "pnta"                   
#> 
#> $l_enum_id
#> [1] "id_1"
#> 
#> $l_fsl_hhs
#> [1] "rarely"    "sometimes" "often"    
#> 
#> $l_fsl_lcsi
#> [1] "yes"            "no_had_no_need" "no_exhausted"   "not_applicable"
#> 
#> $l_fsl_lcsi_en_other
#> [1] "food"              "rent_shelter"      "education"        
#> [4] "health"            "nfis"              "wash"             
#> [7] "dwelling_services" "debts"             "other"            
#> 
#> $l_fsl_lcsi_other
#> [1] "none"              "rent_shelter"      "education"        
#> [4] "health"            "nfis"              "wash"             
#> [7] "dwelling_services" "debts"             "other"            
#> 
#> $l_fsl_source_food
#>  [1] "own_production"     "purchase_cash"      "purchase_credit"   
#>  [4] "hunting"            "gathering"          "exchange"          
#>  [7] "borrow"             "gift"               "begging"           
#> [10] "assistance_in_kind" "assistance_cva"     "other"             
#> [13] "dnk"                "pnta"              
#> 
#> $l_gender
#> [1] "male"   "female" "other"  "pnta"  
#> 
#> $l_hazard_env_type
#>  [1] "none"                  "flood"                 "drought"              
#>  [4] "wildfire"              "water_scarcity"        "cyclone"              
#>  [7] "dnk"                   "pnta"                  "landslide"            
#> [10] "earthquake"            "tsunami"               "volcanic_activity"    
#> [13] "disease_human_vector"  "disease_animal_vector" "insect_infestation"   
#> [16] "technological_hazards" "air_pollution"         "mine_contamination"   
#> [19] "land_degradation"      "conflict_violence"     "financial_shock"      
#> 
#> $l_hazard_sp_type
#>  [1] "none"                    "mine_contamination"     
#>  [3] "conflict_violence"       "financial_shock"        
#>  [5] "population_displacement" "eviction"               
#>  [7] "protection_crisis"       "dnk"                    
#>  [9] "pnta"                    "technological_hazards"  
#> 
#> $l_health_barriers
#>  [1] "none"                      "no_facility_nearby"       
#>  [3] "service_unavailable"       "long_wait_time"           
#>  [5] "cant_afford_consult"       "cant_afford_treatment"    
#>  [7] "cant_afford_transport"     "facility_too_far"         
#>  [9] "disability_access_barrier" "no_transport_means"       
#> [11] "unsafe_at_facility"        "unsafe_during_travel"     
#> [13] "wrong_medication"          "staff_not_trained"        
#> [15] "staff_shortage"            "wait_and_see"             
#> [17] "fear_distrust_healthcare"  "no_time_work_or_care"     
#> [19] "language_barrier"          "no_female_staff"          
#> [21] "other"                     "dnk"                      
#> [23] "pnta"                     
#> 
#> $l_health_ind_healthcare_needed_type
#>  [1] "preventative_consultation" "consultation_acute"       
#>  [3] "consultation_chronic"      "trauma"                   
#>  [5] "elective_surgery"          "emergency_surgery"        
#>  [7] "natal_services"            "safe_delivery"            
#>  [9] "other"                     "dnk"                      
#> [11] "pnta"                     
#> 
#> $l_health_ind_healthcare_received_location
#>  [1] "did_not_seek_care"      "gov_hospital"           "gov_health_center"     
#>  [4] "gov_health_post"        "private_hospital"       "private_clinic"        
#>  [7] "private_other_facility" "ngo_hospital"           "ngo_clinic"            
#> [10] "traditional_healer"     "pharmacy"               "other"                 
#> [13] "dnk"                    "pnta"                  
#> 
#> $l_hesper
#> [1] "no_problem" "problem"    "dnk"        "na"         "pnta"      
#> 
#> $l_hlp_occupancy
#> [1] "ownership"    "rented"       "hosted_free"  "no_agreement" "other"       
#> [6] "dnk"          "pnta"        
#> 
#> $l_hlp_threat_eviction
#> [1] "yes_official_order"    "yes_unofficial_threat" "at_risk"              
#> [4] "no"                    "dnk"                   "pnta"                 
#> 
#> $l_hoh_civil_status
#> [1] "single"   "married"  "divorced" "widowed"  "other"    "dnk"      "pnta"    
#> 
#> $l_id_yn
#> [1] "yes_id"       "member_hh_id" "no_id"        "dnk"          "pnta"        
#> 
#> $l_ind_age_under1
#>  [1] "0"   "1"   "2"   "3"   "4"   "5"   "6"   "7"   "8"   "9"   "10"  "11" 
#> [13] "dnk"
#> 
#> $l_nut_ind_under5_sick_location
#>  [1] "none"             "gov_hospital"     "gov_center"       "gov_post"        
#>  [5] "gov_other"        "private_hospital" "private_clinic"   "private_other"   
#>  [9] "ngo_hospital"     "ngo_clinic"       "ngo_other"        "other"           
#> [13] "dnk"              "pnta"            
#> 
#> $l_nut_ind_under5_sick_symptoms
#> [1] "fever"          "diarrhoea"      "cough"          "vomiting"      
#> [5] "skin_infection" "ear_infection"  "other"          "dnk"           
#> [9] "pnta"          
#> 
#> $l_participation_yes_no
#> [1] "yes"                  "yes_with_interpreter" "no"                  
#> 
#> $l_priority_support_ngo
#>  [1] "lack_access_drinking_water"    "lack_access_food"             
#>  [3] "inadequate_energy"             "lack_income"                  
#>  [5] "inadequate_shelter"            "lack_access_toilet"           
#>  [7] "lack_soap_water_laundry"       "lack_access_clothing"         
#>  [9] "lack_access_healthcare"        "emotional_distress"           
#> [11] "lack_safety"                   "children_not_attending_school"
#> [13] "lack_communication"            "separation_family"            
#> [15] "none"                          "other"                        
#> [17] "dnk"                           "pnta"                         
#> 
#> $l_prot_adult_sep_reason
#>  [1] "original_place_work"              "original_place_farming"          
#>  [3] "original_place_property"          "original_place_lack_money"       
#>  [5] "original_place_journey_unsafe"    "original_place_mobility_barriers"
#>  [7] "original_place_other"             "displaced_other_loc_choice"      
#>  [9] "displaced_other_loc_forced"       "recruited_armed_forced"          
#> [11] "other"                            "dnk"                             
#> [13] "pnta"                            
#> 
#> $l_prot_child_labour
#>  [1] "carry_heavy_loads"         "operate_heavy_machinery"  
#>  [3] "use_dangerous_tools"       "work_dangerous_places"    
#>  [5] "work_at_heights"           "work_in_mines"            
#>  [7] "work_at_night"             "exposed_to_chemicals"     
#>  [9] "long_hours_or_night_shift" "other_health_safety_risks"
#> [11] "none"                      "dnk"                      
#> [13] "pnta"                     
#> 
#> $l_prot_child_sep_reason
#>  [1] "left_married"           "left_employment"        "left_study"            
#>  [4] "left_armed_groups"      "stayed_in_origin"       "separated_displacement"
#>  [7] "kidnapped"              "missing"                "detained"              
#> [10] "other"                  "dnk"                    "pnta"                  
#> 
#> $l_prot_children_reasons
#>  [1] "marriage"      "employment"    "study"         "armed_groups" 
#>  [5] "stayed_behind" "separated"     "kidnapping"    "missing"      
#>  [9] "detained"      "other"         "dnk"           "pnta"         
#> 
#> $l_prot_concern_freq_gbv_areas_type
#>  [1] "no_unsafe_areas"            "latrines_bathing"          
#>  [3] "markets"                    "distribution_areas"        
#>  [5] "water_points"               "social_comm_religious"     
#>  [7] "route_to_school"            "route_to_health_centers"   
#>  [9] "route_to_fields"            "route_from_religious_place"
#> [11] "in_home"                    "public_transport"          
#> [13] "collecting_firewood"        "crossing_checkpoints"      
#> [15] "dnk"                        "pnta"                      
#> 
#> $l_prot_concern_impact
#>  [1] "no_impact"                   "self_restrict_movement"     
#>  [3] "avoid_night_movement"        "no_access_fields"           
#>  [5] "no_access_food"              "no_access_drinking_water"   
#>  [7] "stay_at_home"                "avoid_social_interaction"   
#>  [9] "move_in_groups"              "men_accompany_women_night"  
#> [11] "avoid_communal_services"     "night_vigilance_less_sleep" 
#> [13] "avoid_health_services"       "avoid_education_services"   
#> [15] "avoid_livelihood_activities" "other"                      
#> [17] "dnk"                         "pnta"                       
#> 
#> $l_prot_id_missing_reason
#>  [1] "left_behind"          "no_need"              "no_collected"        
#>  [4] "no_office"            "no_knowledge_process" "no_money"            
#>  [7] "lost_destroyed"       "confiscated"          "denied_rights"       
#> [10] "no_time"              "other"                "dnk"                 
#> [13] "pnta"                
#> 
#> $l_prot_legal_barriers
#>  [1] "no_barriers"                    "no_services"                   
#>  [3] "lack_money"                     "distance_transport"            
#>  [5] "lack_civil_documentation"       "lack_access_individual_support"
#>  [7] "discrimination"                 "no_access_authorities"         
#>  [9] "other"                          "dnk"                           
#> [11] "pnta"                          
#> 
#> $l_prot_legal_yn
#>  [1] "no"                     "yes_identity_documents" "yes_civil_documents"   
#>  [4] "yes_documentation"      "yes_compensation"       "yes_pension"           
#>  [7] "yes_benefits"           "yes_subsidies"          "yes_other"             
#> [10] "dnk"                    "pnta"                  
#> 
#> $l_prot_mines
#>  [1] "not_affected"          "yes_livelihood"        "yes_education"        
#>  [4] "yes_market"            "yes_health"            "yes_freedome_movement"
#>  [7] "yes_injured_killed"    "other"                 "dnk"                  
#> [10] "pnta"                 
#> 
#> $l_prot_needs_1_justice
#> [1] "yes_identity_documents" "yes_counselling_legal"  "yes_property_docs"     
#> [4] "yes_gov_services"       "yes_birth_certificates" "yes_other_services"    
#> [7] "no"                     "dnk"                    "pnta"                  
#> 
#> $l_prot_needs_1_services
#>  [1] "yes_healthcare"           "yes_schools"             
#>  [3] "yes_gov_services"         "yes_therapeutic_services"
#>  [5] "yes_edu_facilities"       "yes_social_services"     
#>  [7] "yes_other_services"       "none"                    
#>  [9] "dnk"                      "pnta"                    
#> 
#> $l_prot_needs_2_activities
#>  [1] "yes_work"             "yes_livelihood"       "yes_safety"          
#>  [4] "yes_farm"             "yes_water"            "yes_other_activities"
#>  [7] "yes_free_choices"     "no"                   "dnk"                 
#> [10] "pnta"                
#> 
#> $l_prot_needs_2_social
#>  [1] "yes_visiting_family"  "yes_visiting_friends" "yes_community_events"
#>  [4] "yes_joining_groups"   "yes_other_social"     "yes_child_recreation"
#>  [7] "yes_decision_making"  "no"                   "dnk"                 
#> [10] "pnta"                
#> 
#> $l_prot_needs_3_movement
#>  [1] "no_changes_feel_unsafe"          "no_safety_concerns"             
#>  [3] "women_girls_avoid_places"        "men_avoid_places"               
#>  [5] "boys_avoid_places"               "women_girls_avoid_night"        
#>  [7] "men_avoid_night"                 "boys_avoid_night"               
#>  [9] "girls_boys_avoid_school"         "women_girls_boys_avoid_firewood"
#> [11] "women_girls_boys_avoid_places"   "different_routes"               
#> [13] "avoid_markets"                   "avoid_public_offices"           
#> [15] "avoid_fields"                    "other_safety_measures"          
#> [17] "dnk"                             "pnta"                           
#> 
#> $l_prot_needs_populations
#> [1] "men"   "women" "boys"  "girls" "pnta" 
#> 
#> $l_prot_needs_threats
#> [1] "violence_community"   "explosive_ordnance"   "kidnapping_abduction"
#> [4] "forced_recruitment"   "discrimination"       "no"                  
#> [7] "dnk"                  "pnta"                
#> 
#> $l_prot_perceived_gbv
#> [1] "never"         "once_twice"    "several_times" "always"       
#> [5] "dnk"           "pnta"         
#> 
#> $l_prot_perceived_risk
#> [1] "never"                "a_little_concerned"   "moderately_concerned"
#> [4] "very_concerned"       "pnta"                
#> 
#> $l_prot_services_availability
#>  [1] "children_safe_space"                          
#>  [2] "children_separation_services"                 
#>  [3] "ftr"                                          
#>  [4] "psychosocial_support"                         
#>  [5] "legal_aid"                                    
#>  [6] "birth_registration"                           
#>  [7] "mine_risk_education"                          
#>  [8] "referral"                                     
#>  [9] "psychosocial_support_women_girls"             
#> [10] "recreational_activities_organized_women_girls"
#> [11] "reproductive_health_services_women_girls"     
#> [12] "women_girls_violences_services"               
#> [13] "none"                                         
#> [14] "dnk"                                          
#> [15] "pnta"                                         
#> 
#> $l_responsible_chore
#> [1] "elderly_women" "elderly_men"   "adult_women"   "adult_men"    
#> [5] "girls"         "boys"          "pnta"         
#> 
#> $l_sanqol
#> [1] "never"     "sometimes" "always"   
#> 
#> $l_satisfaction
#> [1] "completely_satisfied"    "mostly_satisfied"       
#> [3] "somewhat_satisfied"      "mostly_dissatisfied"    
#> [5] "completely_dissatisfied" "dnk"                    
#> [7] "pnta"                   
#> 
#> $l_serious_problem
#>  [1] "hesper_drinking_water"    "hesper_food"             
#>  [3] "hesper_shelter"           "hesper_toilet"           
#>  [5] "hesper_clean"             "hesper_clean_women"      
#>  [7] "hesper_clothes_etc"       "hesper_income_livelihood"
#>  [9] "hesper_health"            "hesper_health_care_men"  
#> [11] "hesper_health_care_women" "hesper_distress"         
#> [13] "hesper_safety"            "hesper_education"        
#> [15] "hesper_care"              "hesper_support"          
#> [17] "hesper_separation"        "hesper_displaced"        
#> [19] "hesper_information"       "hesper_aid"              
#> [21] "hesper_respect"           "hesper_movement"         
#> [23] "hesper_time"              "hesper_law"              
#> [25] "hesper_gbv"               "hesper_drug"             
#> [27] "hesper_mental_health"     "hesper_care_community"   
#> [29] "hesper_other"             "dnk"                     
#> [31] "pnta"                    
#> 
#> $l_setting
#> [1] "rural"         "urban"         "camp_formal"   "camp_informal"
#> 
#> $l_snfi_essential_items_missing
#> [1] "none"          "mosquite_nets" "shoes"         "tools_repair" 
#> [5] "other"         "dnk"           "pnta"         
#> 
#> $l_snfi_fds
#> [1] "yes"  "no"   "pnta"
#> 
#> $l_snfi_fds_cooking
#> [1] "yes"     "no"      "no_need" "pnta"   
#> 
#> $l_snfi_fds_cooking_issue
#> [1] "lack_materials"         "lack_access_facilities" "unsafe"                
#> [4] "inadequate_space"       "lack_space"             "lack_fuel"             
#> [7] "lack_water"             "other"                  "pnta"                  
#> 
#> $l_snfi_fds_sleeping_issue
#> [1] "lack_materials"        "lack_space"            "unsafe_infrastructure"
#> [4] "safety_concern"        "inadequate_space"      "other"                
#> [7] "pnta"                 
#> 
#> $l_snfi_fds_storing_issue
#> [1] "lack_containers_water" "lack_containers_food"  "lack_space_water"     
#> [4] "lack_space_food"       "cannot_store_safely"   "lack_water_tanks"     
#> [7] "other"                 "pnta"                 
#> 
#> $l_snfi_shelter_damage
#>  [1] "none"           "minor_roof"     "major_roof"     "windows_doors" 
#>  [5] "floors"         "walls"          "total_collapse" "other"         
#>  [9] "dnk"            "pnta"          
#> 
#> $l_snfi_shelter_damage_barriers_repairs
#> [1] "cannot_afford_labor"      "cannot_afford_materials" 
#> [3] "materials_unavailable"    "shelter_too_damaged"     
#> [5] "skills_labor_unavailable"
#> 
#> $l_snfi_shelter_damage_cause
#> [1] "earthquake"                          
#> [2] "flood"                               
#> [3] "other_disasters"                     
#> [4] "degradation"                         
#> [5] "lack of maintenance"                 
#> [6] "damaged_accidentally_during_conflict"
#> [7] "burnt_intentionally"                 
#> [8] "other"                               
#> 
#> $l_snfi_shelter_damage_when
#> [1] "last_week"          "last_month"         "1_to_6_months"     
#> [4] "6_months_to_1_year" "more_than_1_year"   "dnk"               
#> [7] "pnta"              
#> 
#> $l_snfi_shelter_issue
#>  [1] "none"               "lack_privacy"       "lack_space"        
#>  [4] "temperature"        "ventilation"        "vectors"           
#>  [7] "no_natural_light"   "leak"               "lock"              
#> [10] "lack_lighting"      "difficulty_move"    "lack_space_laundry"
#> [13] "other"              "dnk"                "pnta"              
#> 
#> $l_snfi_shelter_type
#> [1] "collective_center"  "individual_shelter" "hosted"            
#> [4] "hosting"            "none"               "pnta"              
#> 
#> $l_snfi_shelter_type_collective
#> [1] "public_building"         "religious_building"     
#> [3] "warehouse_other_private" "other"                  
#> 
#> $l_snfi_shelter_type_individual
#> [1] "house"               "apartment"           "unfinished_building"
#> [4] "tent"                "makeshift"           "other"              
#> [7] "dnk"                 "pnta"               
#> 
#> $l_survey_modality
#> [1] "remote"    "in_person"
#> 
#> $l_wash_bathing_facility_issue
#>  [1] "no_issue"                        "lack_bathing_facilities_crowded"
#>  [3] "bathing_not_functioning"         "bathing_unclean_unhygienic"     
#>  [5] "bathing_not_private"             "bathing_not_segregated_gender"  
#>  [7] "bathing_too_far"                 "bathing_difficult_access"       
#>  [9] "bathing_dangerous_access"        "groups_no_access_bathing"       
#> [11] "disabilities_no_access_bathing"  "other"                          
#> [13] "dnk"                             "pnta"                           
#> 
#> $l_wash_chl_actions_sick
#>  [1] "self_medication_traditional" "self_medication_modern"     
#>  [3] "go_health_centre"            "go_cholera_treatment_unit"  
#>  [5] "use_ors"                     "use_homemade_sss"           
#>  [7] "home_remedy_specify"         "do_not_treat"               
#>  [9] "go_traditional_healer"       "go_religious_healer"        
#> [11] "go_pharmacy"                 "other"                      
#> [13] "dnk"                         "pnta"                       
#> 
#> $l_wash_chl_health_actions
#> [1] "nothing_dont_know"       "nothing_cant"           
#> [3] "give_water"              "give_ors"               
#> [5] "go_health_centre"        "call_traditional_healer"
#> [7] "go_orp"                  "dnk"                    
#> [9] "other"                  
#> 
#> $l_wash_chl_health_practices
#>  [1] "store_water_safely"          "boil_treat_water"           
#>  [3] "wash_hands_soap"             "wash_fruits_vegetables"     
#>  [5] "cook_food_well"              "cover_food"                 
#>  [7] "breastfeed_babies"           "clean_utensils"             
#>  [9] "clean_home_broom_water"      "clean_home_disinfectant"    
#> [11] "use_toilet"                  "dispose_child_faeces_toilet"
#> [13] "bury_faeces"                 "receive_vaccine"            
#> [15] "prayers"                     "dnk"                        
#> [17] "other"                      
#> 
#> $l_wash_chl_info_src
#> [1] "radio"                       "clinician_healthcare_worker"
#> [3] "family_member"               "community_health_worker"    
#> [5] "tv"                          "neighbour_friend"           
#> [7] "community_meeting"           "religious_leader"           
#> [9] "other"                      
#> 
#> $l_wash_chl_origin
#> [1] "foreigners_dumping_rubbish" "god_decides"               
#> [3] "comes_with_rain"            "stool"                     
#> [5] "from_sea"                   "other"                     
#> [7] "dnk"                        "pnta"                      
#> 
#> $l_wash_chl_ors_preparation
#> [1] "water"              "safe_water"         "sugar"             
#> [4] "salt"               "teaspoons_6_sugar"  "half_teaspoon_salt"
#> [7] "other"             
#> 
#> $l_wash_chl_transmission
#>  [1] "contact_cholera_patient" "contact_deceased"       
#>  [3] "contact_faeces"          "dirty_hands"            
#>  [5] "air"                     "flies"                  
#>  [7] "mosquitoes"              "contaminated_water"     
#>  [9] "contaminated_food"       "touching_surfaces"      
#> [11] "open_defecation"         "dust_powder"            
#> [13] "same_cup"                "same_plate"             
#> [15] "shaking_hands"           "witchcraft"             
#> [17] "other"                   "dnk"                    
#> [19] "pnta"                   
#> 
#> $l_wash_drinking_water_acceptable
#> [1] "yes_acceptable"         "no_unacceptable_taste"  "no_unacceptable_colour"
#> [4] "no_unacceptable_smell"  "no_contains_materials"  "no_other_specify"      
#> [7] "dnk"                   
#> 
#> $l_wash_drinking_water_quantity
#> [1] "yes_once"  "no_always" "dnk"      
#> 
#> $l_wash_drinking_water_source
#>  [1] "piped_dwelling"       "piped_compound"       "piped_neighbour"     
#>  [4] "tap"                  "borehole"             "protected_well"      
#>  [7] "unprotected_well"     "well_spring"          "unprotected_spring"  
#> [10] "rainwater_collection" "tank_truck"           "cart_tank"           
#> [13] "kiosk"                "bottled_water"        "sachet_water"        
#> [16] "surface_water"        "other"                "dnk"                 
#> [19] "pnta"                
#> 
#> $l_wash_drinking_water_store_insufficient_yn
#> [1] "yes_at_least_once" "no"                "dnk"              
#> 
#> $l_wash_drinking_water_store_small_containers
#> [1] "water_not_stored_small_containers" "water_stored_covered_containers"  
#> [3] "water_stored_uncovered_containers" "unable_to_observe"                
#> 
#> $l_wash_drinking_water_supplied_hours
#> [1] "hours_24_per_day"          "hours_18_24_per_day"      
#> [3] "hours_12_17_per_day"       "hours_6_11_per_day"       
#> [5] "less_than_6_hours_per_day" "dnk"                      
#> 
#> $l_wash_drinking_water_time_sl
#> [1] "5min_or_less"  "5min_15min"    "15min_30min"   "30min_1hr"    
#> [5] "more_than_1hr" "dnk"           "pnta"         
#> 
#> $l_wash_drinking_water_time_yn
#> [1] "water_in_dwelling" "water_in_plot"     "number_minutes"   
#> [4] "dnk"               "pnta"             
#> 
#> $l_wash_drinking_water_treatment
#>  [1] "boil"      "bleach"    "aqua_taps" "strain"    "filter"    "solar"    
#>  [7] "settle"    "other"     "dnk"       "pnta"     
#> 
#> $l_wash_handwashing_facility
#> [1] "available_fixed_in_dwelling" "available_fixed_in_plot"    
#> [3] "available_mobile"            "none"                       
#> [5] "no_permission"               "other"                      
#> 
#> $l_wash_handwashing_facility_observed_water
#> [1] "water_available"     "water_not_available"
#> 
#> $l_wash_handwashing_facility_reported
#> [1] "fixed_dwelling" "fixed_yard"     "mobile"         "none"          
#> [5] "other"          "dnk"            "pnta"          
#> 
#> $l_wash_hwise
#> [1] "never"     "rarely"    "sometimes" "often"     "always"    "dnk"      
#> [7] "pnta"     
#> 
#> $l_wash_hygiene_adaptation
#>  [1] "no_issue"            "less_preferred_nfi"  "soap_substitutes"   
#>  [4] "buy_nfi_further"     "buy_nfi_dangerous"   "borrow_nfi"         
#>  [7] "spend_on_nfi_divert" "reduce_nfi_hygiene"  "reduce_nfi_other"   
#> [10] "other"               "dnk"                 "pnta"               
#> 
#> $l_wash_hygiene_menstrual_issue
#>  [1] "no_problem"                     "materials_too_expensive"       
#>  [3] "materials_not_available_market" "market_too_far"                
#>  [5] "market_dangerous"               "market_difficult_access"       
#>  [7] "groups_no_access_market"        "poor_quality_materials"        
#>  [9] "other"                          "dnk"                           
#> [11] "pnta"                          
#> 
#> $l_wash_hygiene_menstrual_materials
#> [1] "cloth_reusable_pads" "disposable_pads"     "tampons"            
#> [4] "menstrual_cup"       "toilet_paper"        "underwear_alone"    
#> [7] "other"              
#> 
#> $l_wash_hygiene_menstrual_missed_activities
#> [1] "attending_school"                "paid_work"                      
#> [3] "participating_social_activities" "cooking_food"                   
#> [5] "eating_with_others"              "bathing_regular_place"          
#> [7] "no_activity_missed"             
#> 
#> $l_wash_hygiene_menstrual_place
#> [1] "clean"          "private"        "safe"           "supplied_water"
#> [5] "supplied_soap"  "dnk"           
#> 
#> $l_wash_hygiene_menstrual_preferred
#>  [1] "no_preference"    "disposable_pad"   "reusable_pad"     "reusable_cloth"  
#>  [5] "tampon"           "cotton"           "menstrual_cup"    "layers_underwear"
#>  [9] "other"            "dnk"              "pnta"            
#> 
#> $l_wash_hygiene_nfi
#>  [1] "no_hygiene_items_needed" "broom"                  
#>  [3] "bucket"                  "detergent_bleach"       
#>  [5] "drinking_plastic_jug"    "gloves"                 
#>  [7] "hair_comb"               "jerrycan_10l"           
#>  [9] "jerrycan_20l"            "laundry_powder"         
#> [11] "lice_shampoo"            "mop"                    
#> [13] "nail_cutter"             "nose_mask"              
#> [15] "plastic_jar_1l"          "plastic_shovel"         
#> [17] "powder_soap"             "razor"                  
#> [19] "sanitary_pads"           "shampoo_adult"          
#> [21] "soap"                    "tooth_brush"            
#> [23] "tooth_paste"             "towel"                  
#> [25] "waste_bin"               "other"                  
#> [27] "dnk"                     "pnta"                   
#> 
#> $l_wash_person_fetch
#> [1] "adult_woman" "adult_man"   "girl"        "boy"        
#> 
#> $l_wash_piped_supply
#> [1] "large_piped_network_utility"    "small_piped_network_community" 
#> [3] "small_piped_network_households"
#> 
#> $l_wash_sanitation_access_features
#>  [1] "door"                       "walls_protect_privacy"     
#>  [3] "lock_close_door"            "inside_light"              
#>  [5] "outside_light"              "separate_facilities_gender"
#>  [7] "close_to_dwelling"          "none_of_the_above"         
#>  [9] "dnk"                        "pnta"                      
#> 
#> $l_wash_sanitation_access_issue
#>  [1] "no_problem"                         "lack_sanitation_facilities_crowded"
#>  [3] "sanitation_not_functioning_full"    "sanitation_unclean_unhygienic"     
#>  [5] "sanitation_not_private"             "sanitation_not_segregated_gender"  
#>  [7] "sanitation_too_far"                 "sanitation_difficult_access"       
#>  [9] "sanitation_dangerous_access"        "groups_no_access_sanitation"       
#> [11] "disabilities_no_access_sanitation"  "other"                             
#> [13] "dnk"                                "pnta"                              
#> 
#> $l_wash_sanitation_adaptation
#>  [1] "no_issue"                      "less_preferred_sanitation"    
#>  [3] "communal_sanitation"           "defecate_plastic_bag"         
#>  [5] "defecate_open"                 "sanitation_further_than_usual"
#>  [7] "sanitation_dangerous_place"    "sanitation_night"             
#>  [9] "other"                         "dnk"                          
#> [11] "pnta"                         
#> 
#> $l_wash_sanitation_dispose_garbage
#> [1] "collected_formal_service"   "collected_informal_service"
#> [3] "disposed_designated_area"   "disposed_household_yard"   
#> [5] "buried_burned"              "disposed_elsewhere"        
#> [7] "dnk"                       
#> 
#> $l_wash_sanitation_dispose_water
#> [1] "sink_sewer"                 "sink_septic_tank"          
#> [3] "sink_pit"                   "sink_soak_pit"             
#> [5] "sink_open_drain_ground"     "disposed_open_ground_water"
#> [7] "na_away_from_household"     "dnk"                       
#> 
#> $l_wash_sanitation_emptied_where
#> [1] "removed_offsite"               "removed_waterbody_open_ground"
#> [3] "buried_covered_pit_in_situ"    "buried_covered_pit_offsite"   
#> [5] "buried_uncovered_pit"          "other"                        
#> [7] "dnk"                           "pnta"                         
#> 
#> $l_wash_sanitation_emptied_who
#> [1] "public_municipality_government" "private_company_ngo"           
#> [3] "informal_emptier"               "self_emptied"                  
#> [5] "neighbour_family_friend"        "other"                         
#> [7] "dnk"                            "pnta"                          
#> 
#> $l_wash_sanitation_emptied_yn
#> [1] "yes"                      "never"                   
#> [3] "not_emptied_covered_full" "dnk"                     
#> [5] "pnta"                    
#> 
#> $l_wash_sanitation_environment
#> [1] "never_visible"      "sometimes_visible"  "frequently_visible"
#> [4] "dnk"                "pnta"              
#> 
#> $l_wash_sanitation_excreta_released
#> [1] "overflowed"                  "flooded"                    
#> [3] "containment_collapsed"       "other_event_excreta_release"
#> [5] "none_of_the_above"           "other"                      
#> [7] "dnk"                        
#> 
#> $l_wash_sanitation_facility
#>  [1] "flush_piped_sewer"        "flush_septic_tank"       
#>  [3] "flush_pit_latrine"        "flush_open_drain"        
#>  [5] "flush_dnk_where"          "pit_latrine_slab"        
#>  [7] "pit_latrine_wo_slab"      "twin_pit_latrine_slab"   
#>  [9] "twin_pit_latrine_wo_slab" "compost"                 
#> [11] "bucket"                   "other_container"         
#> [13] "hanging_toilet"           "none"                    
#> [15] "other"                   
#> 
#> $l_wash_sanitation_facility_leak
#> [1] "no_never"       "yes_sometimes"  "yes_frequently" "dnk"           
#> 
#> $l_wash_sanitation_facility_location
#> [1] "own_dwelling"  "own_yard_plot" "elsewhere"    
#> 
#> $l_wash_sanitation_outlet_pipe
#> [1] "yes"                         "no_infiltrating_underground"
#> [3] "dnk"                         "pnta"                       
#> 
#> $l_wash_sanitation_outlet_pipe_where
#> [1] "to_leach_field_soak_pit" "to_sewer_wwtp"          
#> [3] "to_sewer_waterbody"      "to_sewer_unknown"       
#> [5] "to_open_drain"           "to_waterbody_surface"   
#> [7] "other"                   "dnk"                    
#> [9] "pnta"                   
#> 
#> $l_wash_sanitation_septic_discharge
#> [1] "to_leach_field_soak_pit"    "to_sewer"                  
#> [3] "to_open_drain"              "to_open_ground_watercourse"
#> [5] "other"                     
#> 
#> $l_wash_sanitation_sharing_public
#> [1] "shared_known_households" "shared_general_public"  
#> 
#> $l_wash_sanitation_toilet_risks
#> [1] "no_risks"        "risk_health"     "risk_harassment" "other"          
#> 
#> $l_wash_sanitation_use_toilet_reason
#> [1] "limited_mobility_prevents_use"    "distance_barriers_prevent_access"
#> [3] "toilet_not_always_available"      "toilet_not_always_safe"          
#> [5] "other"                           
#> 
#> $l_wash_soap_observed
#> [1] "soap_available"     "soap_not_available"
#> 
#> $l_wash_soap_type
#> [1] "soap"         "detergent"    "ash_mud_sand" "other"        "dnk"         
#> [6] "pnta"        
#> 
#> $l_wash_water_access_issue
#>  [1] "no_problem_access_water"              
#>  [2] "water_source_not_segregated_gender"   
#>  [3] "waterpoints_too_far"                  
#>  [4] "water_source_not_functional"          
#>  [5] "waterpoints_difficult_use"            
#>  [6] "intermittent_infrequent_service"      
#>  [7] "disability_no_access_waterpoints"     
#>  [8] "safety_concerns_waterpoints"          
#>  [9] "safety_concerns_travel_waterpoints"   
#> [10] "groups_no_access_waterpoints"         
#> [11] "excessive_waiting_time_waterpoints"   
#> [12] "waterpoints_not_functioning_closed"   
#> [13] "water_not_available_market"           
#> [14] "water_too_expensive"                  
#> [15] "not_enough_containers"                
#> [16] "poor_water_quality_taste_colour_odour"
#> [17] "other"                                
#> [18] "dnk"                                  
#> [19] "pnta"                                 
#> 
#> $l_wash_water_adaptation
#>  [1] "no_issue"                "less_preferred_drinking"
#>  [3] "surface_water_drinking"  "less_preferred_other"   
#>  [5] "surface_water_other"     "fetch_water_further"    
#>  [7] "children_fetch_water"    "dangerous_water_source" 
#>  [9] "spend_on_water_divert"   "reduce_drinking_water"  
#> [11] "reduce_water_other"      "other"                  
#> [13] "dnk"                     "pnta"                   
#> 
#> $l_wash_water_availability_issue
#> [1] "water_not_available_source" "water_too_expensive"       
#> [3] "source_not_accessible"      "other"                     
#> 
#> $l_wash_water_availability_yn
#> [1] "yes_always_available" "no_most_of_time"      "no_some_of_time"     
#> [4] "no_rarely_available"  "dnk"                 
#> 
#> $l_wgss_difficulty
#> [1] "no_difficulty"       "some_difficulty"     "a_lot_of_difficulty"
#> [4] "cannot_do_at_all"    "pnta"                "dnk"                
#> 
#> $l_yn
#> [1] "yes" "no" 
#> 
#> $l_yn_dnk_pnta
#> [1] "yes"  "no"   "dnk"  "pnta"
#> 

# Options for a specific list
xlsform_choices(form)[["yn"]]
#> NULL
```
