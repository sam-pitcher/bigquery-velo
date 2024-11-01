include: "views/*.view"
explore: jobs_by_project {

  always_filter: {
    filters: [
      parameters.project_name: "sam-pitcher-playground",
      parameters.region: "us"
    ]
  }

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

  # GEMINI

  join: gemini_suggestions {
    sql_where: ${gemini_suggestions.generated_text} is not null ;;
    sql_on: ${jobs_by_project.job_id} = ${gemini_suggestions.job_id} ;;
    relationship: many_to_one
  }

  # LOOKER HISTORY

  join: looker_history {
    sql_on: ${jobs_by_project__labels.looker_history_slug} = ${looker_history.history_slug} ;;
    relationship: many_to_one
  }

  # PARAMETERS

  join: parameters {}

}





explore: jobs_timeline_by_project {

  always_filter: {
    filters: [
      parameters.project_name: "sam-pitcher-playground",
      parameters.region: "us"
    ]
  }

  join: parameters {}

}





explore: quantile_statistics {

  always_filter: {
    filters: [
      parameters.project_name: "sam-pitcher-playground",
      parameters.region: "us"
    ]
  }

  join: parameters {}

}



# explore: looker_history {  # Start with looker_history as the base explore
#   join: jobs_by_project {
#     type: left_outer  # Use left_outer to keep all looker_history entries
#     sql_on: ${looker_history.history_slug} = ${jobs_by_project__labels.looker_history_slug} ;;
#     relationship: one_to_one
#   }

#   join: jobs_by_project__labels {
#     view_label: "Jobs By Project: Labels"
#     from: jobs_by_project
#     sql: LEFT JOIN UNNEST(${jobs_by_project.labels}) as jobs_by_project__labels ;;
#     relationship: one_to_many
#   }

#   join: parameters {}

#   always_filter: {
#     filters: [
#       parameters.project_name: "sam-pitcher-playground",
#       parameters.region: "us"
#     ]
#   }
# }
