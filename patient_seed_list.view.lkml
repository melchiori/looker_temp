view: patient_seed_list {
  sql_table_name: migration_to_divvynext.patient_seed_list ;;

  dimension: migration_complete {
    type: number
    sql: ${TABLE}.migration_complete ;;
  }

  dimension: patientid {
    type: string
    sql: ${TABLE}.patientid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
