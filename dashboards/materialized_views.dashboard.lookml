- dashboard: materialized_views
  title: Materialized Views
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: BqCMBIBgqxukusxTXZntlu
  elements:
  - title: Materialized Views
    name: Materialized Views
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project__materialized_view_statistics__materialized_view.chosen,
      jobs_by_project__materialized_view_statistics__materialized_view.rejected_reason,
      jobs_by_project__materialized_view_statistics__materialized_view.table_reference__dataset_id,
      jobs_by_project__materialized_view_statistics__materialized_view.table_reference__project_id,
      jobs_by_project__materialized_view_statistics__materialized_view.table_reference__table_id,
      jobs_by_project.count]
    sorts: [jobs_by_project.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
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
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 10
