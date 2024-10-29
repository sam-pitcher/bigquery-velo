---
- dashboard: concurrent_jobs_overview
  title: Concurrent Jobs Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: JO3wjSiriqKiuTiFNUyT4O
  elements:
  - title: Concurrent Jobs Overview
    name: Concurrent Jobs Overview
    model: bigquery-velo
    explore: jobs_timeline_by_project
    type: looker_area
    fields: [jobs_timeline_by_project.period_start_second, jobs_timeline_by_project.job_id,
      jobs_timeline_by_project.total_period_slot_seconds]
    pivots: [jobs_timeline_by_project.job_id]
    filters: {}
    sorts: [jobs_timeline_by_project.job_id, jobs_timeline_by_project.period_start_second]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Project Name: parameters.project_name
      Region: parameters.region
      Period Start Date: jobs_timeline_by_project.period_start_date
      Period Start Minute: jobs_timeline_by_project.period_start_minute
    row: 9
    col: 0
    width: 24
    height: 10
  - title: Concurrent Job Count
    name: Concurrent Job Count
    model: bigquery-velo
    explore: jobs_timeline_by_project
    type: looker_area
    fields: [jobs_timeline_by_project.period_start_second, jobs_timeline_by_project.job_count]
    fill_fields: [jobs_timeline_by_project.period_start_second]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_second]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Project Name: parameters.project_name
      Region: parameters.region
      Period Start Date: jobs_timeline_by_project.period_start_date
      Period Start Minute: jobs_timeline_by_project.period_start_minute
    row: 2
    col: 0
    width: 12
    height: 7
  - title: Concurrent Job Slot Seconds
    name: Concurrent Job Slot Seconds
    model: bigquery-velo
    explore: jobs_timeline_by_project
    type: looker_area
    fields: [jobs_timeline_by_project.period_start_second, jobs_timeline_by_project.total_period_slot_seconds]
    fill_fields: [jobs_timeline_by_project.period_start_second]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_second]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      jobs_timeline_by_project.total_period_slot_seconds: "#E8710A"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Project Name: parameters.project_name
      Region: parameters.region
      Period Start Date: jobs_timeline_by_project.period_start_date
      Period Start Minute: jobs_timeline_by_project.period_start_minute
    row: 2
    col: 12
    width: 12
    height: 7
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Looker"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 19
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"BigQuery"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Looker Query Metrics
    name: Looker Query Metrics
    model: system__activity
    explore: query_metrics
    type: looker_grid
    fields: [query.slug, query_metrics.queued_average, query_metrics.acquire_connection_average,
      query_metrics.execute_main_query_average, query_metrics.cache_load_average,
      query_metrics.load_main_query_in_memory_average, query_metrics.load_process_and_stream_main_query_average,
      query_metrics.pdt_average]
    sorts: [query_metrics.execute_main_query_average desc]
    limit: 5000
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Period Start Date: history.created_date
      Period Start Minute: history.created_minute
    row: 21
    col: 0
    width: 24
    height: 13
  filters:
  - name: Region
    title: Region
    type: field_filter
    default_value: us
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: bigquery-velo
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: parameters.region
  - name: Period Start Date
    title: Period Start Date
    type: field_filter
    default_value: 2024/09/25 to 2024/10/30
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: bigquery-velo
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: jobs_timeline_by_project.period_start_date
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: sam-pitcher-playground
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: bigquery-velo
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: parameters.project_name
  - name: Period Start Minute
    title: Period Start Minute
    type: field_filter
    default_value: 2024-09-25 15:20 for 4 minutes
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery-velo
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: jobs_timeline_by_project.period_start_minute
