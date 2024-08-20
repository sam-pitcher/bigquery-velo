---
- dashboard: bi_engine
  title: BI Engine
  layout: newspaper
  preferred_viewer: dashboards-next
  load_configuration: wait
  description: ''
  preferred_slug: smq0ihrBWOMFUKbKc3nwkR
  elements:
  - title: BI Engine Overview
    name: BI Engine Overview
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project.job_id, jobs_by_project__bi_engine_statistics__bi_engine_reasons.code,
      jobs_by_project__bi_engine_statistics__bi_engine_reasons.message]
    filters:
      parameters.project_name: sam-pitcher-playground
      parameters.region: us
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
    listen:
      User Email: jobs_by_project.user_email
      Creation Time: jobs_by_project.creation_time
    row: 0
    col: 0
    width: 24
    height: 27
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
      display: inline
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: parameters.region
  - name: Creation Time
    title: Creation Time
    type: field_filter
    default_value: 180 day
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
  - name: User Email
    title: User Email
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: jobs_by_project.user_email
  - name: Project ID
    title: Project ID
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
    field: jobs_by_project__referenced_tables.project_id
  - name: Dataset ID
    title: Dataset ID
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
    field: jobs_by_project__referenced_tables.dataset_id
  - name: Table ID
    title: Table ID
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
    field: jobs_by_project__referenced_tables.table_id
