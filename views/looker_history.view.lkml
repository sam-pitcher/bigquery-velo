view: looker_history {
  sql_table_name: `sam-pitcher-playground.bigquery_velo.looker-shredr-core-history` ;;

  dimension: history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.History_ID ;;
  }

  dimension: dashboard_description {
    group_label: "Dashboard Information"
    type: string
    sql: ${TABLE}.Dashboard_Description ;;
  }

  dimension: dashboard_id__user_defined_only_ {
    group_label: "Dashboard Information"
    type: number
    value_format_name: id
    sql: ${TABLE}.Dashboard_ID__User_defined_only_ ;;
  }

  dimension: dashboard_link {
    group_label: "Dashboard Information"
    type: number
    sql: ${TABLE}.Dashboard_Link ;;
  }

  dimension: dashboard_lookml_link_id {
    group_label: "Dashboard Information"
    type: string
    sql: ${TABLE}.Dashboard_Lookml_Link_ID ;;
  }

  dimension: dashboard_title {
    group_label: "Dashboard Information"
    type: string
    sql: ${TABLE}.Dashboard_Title ;;
  }

  dimension_group: history_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.History_Created_Time ;;
  }

  dimension: history_dashboard_id__inclusive_ {
    group_label: "History Information"
    type: string
    sql: ${TABLE}.History_Dashboard_ID__Inclusive_ ;;
  }

  dimension: history_issuer_source {
    group_label: "History Information"
    type: string
    sql: ${TABLE}.History_Issuer_Source ;;
  }

  dimension: history_message {
    group_label: "History Information"
    type: string
    sql: ${TABLE}.History_Message ;;
  }

  dimension: history_render_key {
    group_label: "History Information"
    type: string
    sql: ${TABLE}.History_Render_Key ;;
  }

  dimension: history_result_format {
    group_label: "History Information"
    type: string
    sql: ${TABLE}.History_Result_Format ;;
  }

  dimension: history_slug {
    group_label: "History Information"
    type: string
    sql: ${TABLE}.History_Slug ;;
  }

  dimension: history_source {
    group_label: "History Information"
    type: string
    sql: ${TABLE}.History_Source ;;
  }

  dimension: history_status {
    group_label: "History Information"
    type: string
    sql: ${TABLE}.History_Status ;;
  }

  dimension: query_custom_fields {
    group_label: "Query Information"
    type: string
    sql: ${TABLE}.Query_Custom_Fields ;;
  }

  dimension: query_explore {
    group_label: "Query Information"
    type: string
    sql: ${TABLE}.Query_Explore ;;
  }

  dimension: query_fields_used {
    group_label: "Query Information"
    type: string
    sql: ${TABLE}.Query_Fields_Used ;;
  }

  dimension: query_fill_fields {
    group_label: "Query Information"
    type: string
    sql: ${TABLE}.Query_Fill_Fields ;;
  }

  dimension: query_filters {
    group_label: "Query Information"
    type: string
    sql: ${TABLE}.Query_Filters ;;
  }

  dimension: query_hash {
    group_label: "Query Information"
    type: string
    sql: ${TABLE}.Query_Hash ;;
  }

  dimension: query_id {
    group_label: "Query Information"
    type: number
    sql: ${TABLE}.Query_ID ;;
  }

  dimension: query_link {
    group_label: "Query Information"
    type: number
    sql: ${TABLE}.Query_Link ;;
    link: {
      label: "Open query"
      url: "{{value}}"
    }
  }

  dimension: query_model {
    group_label: "Query Information"
    type: string
    sql: ${TABLE}.Query_Model ;;
  }

  dimension: query_pivots_used {
    group_label: "Query Information"
    type: string
    sql: ${TABLE}.Query_Pivots_Used ;;
  }

  dimension: user_email {
    group_label: "User Information"
    type: string
    sql: ${TABLE}.User_Email ;;
  }

  dimension: user_id {
    group_label: "User Information"
    type: number
    sql: ${TABLE}.User_ID ;;
  }

  dimension: user_name {
    group_label: "User Information"
    type: string
    sql: ${TABLE}.User_Name ;;
  }

}
