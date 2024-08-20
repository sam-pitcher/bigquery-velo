---
- dashboard: materialized_views
  title: Materialized Views
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: u3mS3jCDwxBpOprinl3ww9
  elements:
  - title: Overview
    name: Overview
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project__materialized_view_statistics__materialized_view.chosen,
      jobs_by_project__materialized_view_statistics__materialized_view.estimated_bytes_saved,
      jobs_by_project__materialized_view_statistics__materialized_view.rejected_reason,
      jobs_by_project__materialized_view_statistics__materialized_view.table_reference__project_id,
      jobs_by_project__materialized_view_statistics__materialized_view.table_reference__dataset_id,
      jobs_by_project__materialized_view_statistics__materialized_view.table_reference__table_id,
      jobs_by_project__referenced_tables.table_reference__full_table_name, jobs_by_project__materialized_view_statistics__materialized_view.table_reference__full_table_name,
      jobs_by_project.job_count]
    sorts: [jobs_by_project.job_count desc]
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
    minimum_column_width: 75
    hidden_fields: [jobs_by_project__materialized_view_statistics__materialized_view.table_reference__table_id,
      jobs_by_project__materialized_view_statistics__materialized_view.table_reference__dataset_id,
      jobs_by_project__materialized_view_statistics__materialized_view.table_reference__project_id]
    series_column_widths:
      jobs_by_project__materialized_view_statistics__materialized_view.chosen: 130
      jobs_by_project__materialized_view_statistics__materialized_view.estimated_bytes_saved: 154
      jobs_by_project__materialized_view_statistics__materialized_view.rejected_reason: 145
    listen:
      Creation Time: jobs_by_project.creation_time
      User Email: jobs_by_project.user_email
      Chosen (Yes / No): jobs_by_project__materialized_view_statistics__materialized_view.chosen
      Project ID: jobs_by_project__referenced_tables.project_id
      Dataset ID: jobs_by_project__referenced_tables.dataset_id
      Table ID: jobs_by_project__referenced_tables.table_id
    row: 0
    col: 0
    width: 24
    height: 15
  - title: Chosen
    name: Chosen
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_column
    fields: [jobs_by_project__materialized_view_statistics__materialized_view.chosen,
      jobs_by_project.job_count, jobs_by_project__materialized_view_statistics__materialized_view.rejected_reason]
    pivots: [jobs_by_project__materialized_view_statistics__materialized_view.rejected_reason]
    fill_fields: [jobs_by_project__materialized_view_statistics__materialized_view.chosen]
    sorts: [jobs_by_project__materialized_view_statistics__materialized_view.rejected_reason,
      jobs_by_project.job_count desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      User Email: jobs_by_project.user_email
      Creation Time: jobs_by_project.creation_time
      Project ID: jobs_by_project__referenced_tables.project_id
      Dataset ID: jobs_by_project__referenced_tables.dataset_id
      Table ID: jobs_by_project__referenced_tables.table_id
    row: 21
    col: 16
    width: 8
    height: 4
  - title: Rejected Reasons
    name: Rejected Reasons
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_bar
    fields: [jobs_by_project__materialized_view_statistics__materialized_view.rejected_reason,
      jobs_by_project.job_count]
    filters:
      jobs_by_project__materialized_view_statistics__materialized_view.chosen: 'No'
      jobs_by_project__materialized_view_statistics__materialized_view.rejected_reason: "-NULL"
    sorts: [jobs_by_project.job_count desc 0]
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
    stacking: ''
    limit_displayed_rows: false
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
      Project ID: jobs_by_project__referenced_tables.project_id
      Dataset ID: jobs_by_project__referenced_tables.dataset_id
      Table ID: jobs_by_project__referenced_tables.table_id
    row: 15
    col: 16
    width: 8
    height: 6
  - title: Chosen by Date
    name: Chosen by Date
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_column
    fields: [jobs_by_project.creation_date, jobs_by_project.job_count, jobs_by_project__materialized_view_statistics__materialized_view.chosen]
    pivots: [jobs_by_project__materialized_view_statistics__materialized_view.chosen]
    fill_fields: [jobs_by_project__materialized_view_statistics__materialized_view.chosen]
    sorts: [jobs_by_project__materialized_view_statistics__materialized_view.chosen,
      jobs_by_project.creation_date desc]
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
    stacking: ''
    limit_displayed_rows: false
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      User Email: jobs_by_project.user_email
      Creation Time: jobs_by_project.creation_time
    row: 15
    col: 0
    width: 16
    height: 10
  filters:
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
  - name: Chosen (Yes / No)
    title: Chosen (Yes / No)
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
    model: bigquery-velo
    explore: jobs_by_project
    listens_to_filters: []
    field: jobs_by_project__materialized_view_statistics__materialized_view.chosen
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
