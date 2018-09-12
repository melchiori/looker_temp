view: gs_never_started {
  sql_table_name: public.gs_never_started ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: __senttime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.__senttime ;;
  }

  dimension: __tablename {
    type: string
    sql: ${TABLE}.__tablename ;;
  }

  dimension_group: __updatetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.__updatetime ;;
  }

  dimension: agent_email_address {
    type: string
    sql: ${TABLE}.agent_email_address ;;
  }

  dimension: bin {
    type: string
    sql: ${TABLE}.bin ;;
  }

  dimension: group_number {
    type: string
    sql: ${TABLE}.group_number ;;
  }

  dimension: intake_stage {
    type: string
    sql: ${TABLE}.intake_stage ;;
  }

  dimension: loss_reason {
    type: string
    sql: ${TABLE}.loss_reason ;;
  }

  dimension: loss_reason_notes {
    type: string
    sql: ${TABLE}.loss_reason_notes ;;
  }

  dimension: patid {
    type: string
    sql: ${TABLE}.patid ;;
  }

  dimension: pcn {
    type: string
    sql: ${TABLE}.pcn ;;
  }

  dimension: pharmacy_type {
    type: string
    sql: ${TABLE}.pharmacy_type ;;
  }

  dimension: previous_pharmacy_fax_number {
    type: string
    sql: ${TABLE}.previous_pharmacy_fax_number ;;
  }

  dimension: previous_pharmacy_name {
    type: string
    sql: ${TABLE}.previous_pharmacy_name ;;
  }

  dimension: speak_to_customer {
    type: string
    sql: ${TABLE}.speak_to_customer ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: transferred_meds {
    type: string
    sql: ${TABLE}.transferred_meds ;;
  }

  dimension: zd_ticket_id {
    type: string
    sql: ${TABLE}.zd_ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, previous_pharmacy_name, __tablename]
  }
}
