view: gs_lead_intake {
  sql_table_name: public.gs_lead_intake ;;

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

  dimension: credit_card_obtained {
    type: string
    sql: ${TABLE}.credit_card_obtained ;;
  }

  dimension: intake_lost_reason {
    type: string
    sql: ${TABLE}.intake_lost_reason ;;
  }

  dimension: intake_status {
    type: string
    sql: ${TABLE}.intake_status ;;
  }

  dimension_group: lead_sold {
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
    sql: ${TABLE}.lead_sold_date ;;
  }

  dimension: med_list {
    type: string
    sql: ${TABLE}.med_list ;;
  }

  dimension: patid {
    type: string
    sql: ${TABLE}.patid ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.promo_code ;;
  }

  dimension: sales_agent {
    type: string
    sql: ${TABLE}.sales_agent ;;
  }

  dimension: sales_outcome {
    type: string
    sql: ${TABLE}.sales_outcome ;;
  }

  dimension: sales_outcome_detail {
    type: string
    sql: ${TABLE}.sales_outcome_detail ;;
  }

dimension: lead_type {
  type: string
  sql:  CASE
          WHEN ${TABLE}.promo_code = 'ILCM'
            OR ${TABLE}.promo_code = 'CCC01' THEN 'Full Sale'
          WHEN ${TABLE}.promo_code = 'GOH'
            OR ${TABLE}.promo_code = 'KPNET'
            OR ${TABLE}.promo_code = 'PAKM01'
            OR ${TABLE}.promo_code = 'BSM01' THEN 'Hard Lead'
          WHEN ${TABLE}.promo_code = 'VBC' THEN 'Soft Lead'
          WHEN ${TABLE}.promo_code = 'WEB' THEN 'Organic'
          ELSE 'Unknown'
        END ;;
  }


  dimension: is_sale_before_mtd {
    type: yesno
    sql: ( ${TABLE}.lead_sold_date not between DATE_TRUNC('month', CURRENT_TIMESTAMP) and CURRENT_TIMESTAMP ) ;;
  }
  dimension: is_sale_before_ytd {
    type: yesno
    sql: ( ${TABLE}.lead_sold_date not between DATE_TRUNC('year', CURRENT_TIMESTAMP) and CURRENT_TIMESTAMP ) ;;
  }

  measure: lead_count {
    type: count
    drill_fields: [id, __tablename]
  }

  measure: sales_count {
   type:  count
   filters: {
     field: sales_outcome
     value: "Y"
     }
  }

  measure: connected_count {
    type:  count
    filters: {
      field: sales_outcome
      value: "Y,N"
    }
  }

  measure: fulfilled_count {
    type:  count
    filters: {
      field: intake_status
      value: "FULFILLED"
    }
  }

  measure: in_progress_count {
    type:  count
    filters: {
      field: intake_status
      value: "LIMBO"
    }
  }

}
