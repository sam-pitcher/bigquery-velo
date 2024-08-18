- dashboard: jobs_overview
  title: Jobs Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: jobs_overview
  elements:
  - title: Jobs Overview
    name: Jobs Overview
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project.total_bytes_processed, jobs_by_project.job_id, jobs_by_project.total_slot_ms,
      jobs_by_project.total_query_runtime_seconds]
    sorts: [jobs_by_project.total_query_runtime_seconds desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 10
