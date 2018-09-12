connection: "panoply"

# include all the views
include: "*.view"

datagroup: divvydose_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: patient_seed_list {
  label: "Patient details, med list, and seed list"

  join: patient_details {
    type: left_outer
    sql_on: ${patient_seed_list.patientid} = ${patient_details.qs1_patient_id} ;;
    relationship: many_to_one
  }

  join: patient_med_list {
    type: left_outer
    sql_on: ${patient_seed_list.patientid} = ${patient_med_list.patient_id} ;;
    relationship: many_to_one
  }

}

explore: gs_lead_intake {
  label: "Acquisition Funnel"

}

persist_with: divvydose_default_datagroup
