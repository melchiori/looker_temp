view: ndc_list {
  sql_table_name: migration_to_divvynext.ndc_list ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension: ndc11 {
    type: string
    sql: ${TABLE}.ndc11 ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
