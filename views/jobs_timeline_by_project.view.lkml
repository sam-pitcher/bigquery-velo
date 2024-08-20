view: jobs_timeline_by_project {
  # sql_table_name: `sam-pitcher-playground.bigquery_velo.jobs_timeline_by_project` ;;
  derived_table: {
    sql: select * from `{{ _filters['parameters.project_name'] | sql_quote | replace: "'", "" }}`.`region-{{ _filters['parameters.region'] | sql_quote | replace: "'", "" }}`.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_PROJECT ;;
  }

  dimension: job_id {
    group_label: "Job Information"
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: truncated_job_id {
    group_label: "Job Information"
    type: string
    sql: REGEXP_EXTRACT(${job_id}, r'^([^_]+)_.*$') ;;
  }

  dimension: period_start_from_parameter {
    label_from_parameter: parameters.timeframe
    sql:
    {% if parameters.timeframe._parameter_value == "second" %}${period_start_time}
    {% elsif parameters.timeframe._parameter_value == "minute" %}${period_start_minute}
    {% elsif parameters.timeframe._parameter_value == "hour" %}${period_start_hour}
    {% else %}${period_start_time}
    {% endif %}
    ;;
  }

  dimension_group: period_start {
    type: time
    timeframes: [raw, time, second, minute, hour, date, week, month, quarter, year]
    sql: ${TABLE}.period_start ;;
  }

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: concat(${job_id}, ${period_start_raw}) ;;
  }

  dimension: job_type {
    group_label: "Job Information"
    type: string
    sql: ${TABLE}.job_type ;;
  }

  dimension_group: job_creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.job_creation_time ;;
  }

  dimension_group: job_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.job_start_time ;;
  }

  dimension_group: job_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.job_end_time ;;
  }

  dimension: cache_hit {
    type: yesno
    sql: ${TABLE}.cache_hit ;;
  }

  dimension: edition {
    type: string
    sql: ${TABLE}.edition ;;
  }

  dimension: error_result__debug_info {
    type: string
    sql: ${TABLE}.error_result.debug_info ;;
    group_label: "Error Result"
    group_item_label: "Debug Info"
  }

  dimension: error_result__location {
    type: string
    sql: ${TABLE}.error_result.location ;;
    group_label: "Error Result"
    group_item_label: "Location"
  }

  dimension: error_result__message {
    type: string
    sql: ${TABLE}.error_result.message ;;
    group_label: "Error Result"
    group_item_label: "Message"
  }

  dimension: error_result__reason {
    type: string
    sql: ${TABLE}.error_result.reason ;;
    group_label: "Error Result"
    group_item_label: "Reason"
  }

  dimension: parent_job_id {
    group_label: "Job Information"
    type: string
    sql: ${TABLE}.parent_job_id ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_number {
    type: number
    sql: ${TABLE}.project_number ;;
  }

  dimension: reservation_id {
    type: string
    sql: ${TABLE}.reservation_id ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: statement_type {
    type: string
    sql: ${TABLE}.statement_type ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  # dimensions for measures

  dimension: period_slot_ms {
    hidden: yes
    type: number
    sql: ${TABLE}.period_slot_ms ;;
  }

  dimension: bytes_billed {
    hidden: yes
    type: number
    sql: ${TABLE}.total_bytes_billed ;;
  }

  dimension: bytes_processed {
    hidden: yes
    type: number
    sql: ${TABLE}.total_bytes_processed ;;
  }

  dimension: period_estimated_runnable_units {
    hidden: yes
    type: number
    sql: ${TABLE}.period_estimated_runnable_units ;;
  }

  dimension: period_shuffle_ram_usage_ratio {
    type: number
    sql: ${TABLE}.period_shuffle_ram_usage_ratio ;;
  }

  # measures

  measure: total_bytes_processed {
    group_label: "Bytes Processed"
    type: sum
    sql: ${bytes_processed} ;;
    value_format_name: decimal_0
  }

  measure: total_mb_processed {
    group_label: "Bytes Processed"
    type: sum
    sql: ${bytes_processed} / 1000000.0 ;;
    value_format_name: decimal_0
  }

  measure: total_gb_processed {
    group_label: "Bytes Processed"
    type: sum
    sql: ${bytes_processed} / 1000000000.0 ;;
    value_format_name: decimal_2
  }

  measure: total_tb_processed {
    group_label: "Bytes Processed"
    type: sum
    sql: ${bytes_processed} / 1000000000000.0 ;;
    value_format_name: decimal_3
  }

  measure: total_period_slot_ms {
    group_label: "Period Slot Duration"
    type: sum
    sql: ${period_slot_ms} ;;
    value_format_name: decimal_0
  }

  measure: total_period_slot_seconds {
    group_label: "Period Slot Duration"
    type: sum
    sql: ${period_slot_ms} / 1000.0 ;;
    value_format_name: decimal_0
  }

  measure: max_period_slot_seconds {
    type: max
    sql: ${period_slot_ms} / 1000.0 ;;
    value_format_name: decimal_0
    # html: {{rendered_value}} slots ;;
  }

  measure: total_bytes_billed {
    type: sum
    sql: ${bytes_billed} ;;
  }

  measure: total_period_estimated_runnable_units {
    type: sum
    sql: ${period_estimated_runnable_units} ;;
  }

  measure: job_count {
    type: count_distinct
    sql: ${job_id} ;;
  }

}
