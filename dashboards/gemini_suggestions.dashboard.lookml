---
- dashboard: gemini_suggestions
  title: Gemini Suggestions
  layout: newspaper
  preferred_viewer: dashboards-next
  load_configuration: wait
  description: ''
  preferred_slug: awMlpqyjaOtiwpMJDfaVh9
  elements:
  - title: Overview
    name: Overview
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project.job_id, jobs_by_project.query, gemini_suggestions.generated_text,
      jobs_by_project.total_query_runtime_seconds]
    sorts: [jobs_by_project.total_query_runtime_seconds desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      jobs_by_project.job_id: 5
      jobs_by_project.total_query_runtime_seconds: 5
    series_cell_visualizations:
      jobs_by_project.total_query_runtime_seconds:
        is_active: true
    defaults_version: 1
    listen:
      Job ID: jobs_by_project.job_id
      Creation Time: jobs_by_project.creation_time
      Gemini Suggestion: gemini_suggestions.generated_text
      Query: jobs_by_project.query
      Project Name: parameters.project_name
      Region: parameters.region
    row: 0
    col: 0
    width: 24
    height: 31
  filters:
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: parameters.project_name
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: popover
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: parameters.region
  - name: Creation Time
    title: Creation Time
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: jobs_by_project.creation_time
  - name: Job ID
    title: Job ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: jobs_by_project.job_id
  - name: Query
    title: Query
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: jobs_by_project.query
  - name: Gemini Suggestion
    title: Gemini Suggestion
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: gemini_suggestions.generated_text
