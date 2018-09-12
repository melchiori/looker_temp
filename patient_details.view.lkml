view: patient_details {
  sql_table_name: migration_to_divvynext.patient_details ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_initial {
    type: string
    sql: ${TABLE}.middle_initial ;;
  }

  dimension: qs1_patient_id {
    type: string
    sql: ${TABLE}.qs1_patient_id ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }

  dimension: dob_year {
    type:  string
    sql:  substring(${dob},1,4) ;;
  }
}
