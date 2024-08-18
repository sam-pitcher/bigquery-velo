include: "views/*.view"
explore: jobs_by_project {

  join: jobs_by_project__labels {
    view_label: "Jobs By Project: Labels"
    sql: LEFT JOIN UNNEST(${jobs_by_project.labels}) as jobs_by_project__labels ;;
    relationship: one_to_many
  }

  join: jobs_by_project__timeline {
    view_label: "Jobs By Project: Timeline"
    sql: LEFT JOIN UNNEST(${jobs_by_project.timeline}) as jobs_by_project__timeline ;;
    relationship: one_to_many
  }

  join: jobs_by_project__job_stages {
    view_label: "Jobs By Project: Job Stages"
    sql: LEFT JOIN UNNEST(${jobs_by_project.job_stages}) as jobs_by_project__job_stages ;;
    relationship: one_to_many
  }

  join: jobs_by_project__referenced_tables {
    view_label: "Jobs By Project: Referenced Tables"
    sql: LEFT JOIN UNNEST(${jobs_by_project.referenced_tables}) as jobs_by_project__referenced_tables ;;
    relationship: one_to_many
  }

  join: jobs_by_project__job_stages__steps {
    view_label: "Jobs By Project: Job Stages Steps"
    sql: LEFT JOIN UNNEST(${jobs_by_project__job_stages.steps}) as jobs_by_project__job_stages__steps ;;
    relationship: one_to_many
  }

  join: jobs_by_project__job_stages__input_stages {
    view_label: "Jobs By Project: Job Stages Input Stages"
    sql: LEFT JOIN UNNEST(${jobs_by_project__job_stages.input_stages}) as jobs_by_project__job_stages__input_stages ;;
    relationship: one_to_many
  }

  join: jobs_by_project__job_stages__steps__substeps {
    view_label: "Jobs By Project: Job Stages Steps Substeps"
    sql: LEFT JOIN UNNEST(${jobs_by_project__job_stages__steps.substeps}) as jobs_by_project__job_stages__steps__substeps ;;
    relationship: one_to_many
  }

  join: jobs_by_project__bi_engine_statistics__bi_engine_reasons {
    view_label: "Jobs By Project: Bi Engine Statistics Bi Engine Reasons"
    sql: LEFT JOIN UNNEST(${jobs_by_project.bi_engine_statistics__bi_engine_reasons}) as jobs_by_project__bi_engine_statistics__bi_engine_reasons ;;
    relationship: one_to_many
  }

  join: jobs_by_project__materialized_view_statistics__materialized_view {
    view_label: "Jobs By Project: Materialized View Statistics Materialized View"
    sql: LEFT JOIN UNNEST(${jobs_by_project.materialized_view_statistics__materialized_view}) as jobs_by_project__materialized_view_statistics__materialized_view ;;
    relationship: one_to_many
  }

  join: jobs_by_project__query_info__performance_insights__stage_performance_change_insights {
    view_label: "Jobs By Project: Query Info Performance Insights Stage Performance Change Insights"
    sql: LEFT JOIN UNNEST(${jobs_by_project.query_info__performance_insights__stage_performance_change_insights}) as jobs_by_project__query_info__performance_insights__stage_performance_change_insights ;;
    relationship: one_to_many
  }

  join: jobs_by_project__query_info__performance_insights__stage_performance_standalone_insights {
    view_label: "Jobs By Project: Query Info Performance Insights Stage Performance Standalone Insights"
    sql: LEFT JOIN UNNEST(${jobs_by_project.query_info__performance_insights__stage_performance_standalone_insights}) as jobs_by_project__query_info__performance_insights__stage_performance_standalone_insights ;;
    relationship: one_to_many
  }

  join: jobs_by_project__query_info__performance_insights__stage_performance_standalone_insights__bi_engine_reasons {
    view_label: "Jobs By Project: Query Info Performance Insights Stage Performance Standalone Insights Bi Engine Reasons"
    sql: LEFT JOIN UNNEST(${jobs_by_project__query_info__performance_insights__stage_performance_standalone_insights.bi_engine_reasons}) as jobs_by_project__query_info__performance_insights__stage_performance_standalone_insights__bi_engine_reasons ;;
    relationship: one_to_many
  }

  join: jobs_by_project__query_info__performance_insights__stage_performance_standalone_insights__high_cardinality_joins {
    view_label: "Jobs By Project: Query Info Performance Insights Stage Performance Standalone Insights High Cardinality Joins"
    sql: LEFT JOIN UNNEST(${jobs_by_project__query_info__performance_insights__stage_performance_standalone_insights.high_cardinality_joins}) as jobs_by_project__query_info__performance_insights__stage_performance_standalone_insights__high_cardinality_joins ;;
    relationship: one_to_many
  }
}
