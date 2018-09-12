view: patient_med_list {
  sql_table_name: migration_to_divvynext.patient_med_list ;;

  dimension: cycle_fill {
    type: string
    sql: ${TABLE}.cycle_fill ;;
  }

  dimension: date_written {
    type: string
    sql: ${TABLE}.date_written ;;
  }

  dimension: days_supply {
    type: string
    sql: ${TABLE}.days_supply ;;
  }

  dimension: discontinued {
    type: string
    sql: ${TABLE}.discontinued ;;
  }

  dimension: dispensed_drug_id {
    type: string
    sql: ${TABLE}.dispensed_drug_id ;;
  }

  dimension: dispensed_drug_name {
    type: string
    sql: ${TABLE}.dispensed_drug_name ;;
  }

  dimension: dispensed_drug_ndc {
    type: string
    sql: ${TABLE}.dispensed_drug_ndc ;;
  }

  dimension: drug_class {
    type: string
    sql: ${TABLE}.drug_class ;;
  }

  dimension: due_date {
    type: string
    sql: ${TABLE}.due_date ;;
  }

  dimension: expiration_date {
    type: string
    sql: ${TABLE}.expiration_date ;;
  }

  dimension: full_price_at_last_fill {
    type: string
    sql: ${TABLE}.full_price_at_last_fill ;;
  }

  dimension: last_fill_date {
    type: string
    sql: ${TABLE}.last_fill_date ;;
  }

  dimension: original_date {
    type: string
    sql: ${TABLE}.original_date ;;
  }

  dimension: patient_amount_at_last_fill {
    type: string
    sql: ${TABLE}.patient_amount_at_last_fill ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patient_id ;;
  }

  dimension: prescribed_drug_id {
    type: string
    sql: ${TABLE}.prescribed_drug_id ;;
  }

  dimension: prescribed_drug_name {
    type: string
    sql: ${TABLE}.prescribed_drug_name ;;
  }

  dimension: prescribed_drug_ndc {
    type: string
    sql: ${TABLE}.prescribed_drug_ndc ;;
  }

  dimension: prescriber_id {
    type: string
    sql: ${TABLE}.prescriber_id ;;
  }

  dimension: prescriber_name {
    type: string
    sql: ${TABLE}.prescriber_name ;;
  }

  dimension: primary_price_plan {
    type: string
    sql: ${TABLE}.primary_price_plan ;;
  }

  dimension: prn_indicator {
    type: string
    sql: ${TABLE}.prn_indicator ;;
  }

  dimension: profile_only {
    type: string
    sql: ${TABLE}.profile_only ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }

  dimension: quantity_prescribed {
    type: string
    sql: ${TABLE}.quantity_prescribed ;;
  }

  dimension: refills_remaining {
    type: string
    sql: ${TABLE}.refills_remaining ;;
  }

  dimension: rx_number {
    type: string
    sql: ${TABLE}.rx_number ;;
  }

  dimension: short_term_indicator {
    type: string
    sql: ${TABLE}.short_term_indicator ;;
  }

  dimension: sig {
    type: string
    sql: ${TABLE}.sig ;;
  }

  measure: count {
    type: count
    drill_fields: [prescriber_name, prescribed_drug_name, dispensed_drug_name]
  }
}
