---
- dashboard: looker_jobs_overview
  title: Looker Jobs Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: sf82pAQpUCfguKpsEpPTL5
  elements:
  - title: Jobs by Dashboard
    name: Jobs by Dashboard
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_column
    fields: [looker_history.dashboard_title, jobs_by_project.total_gb_processed, jobs_by_project.job_count]
    filters:
      parameters.project_name: sam-pitcher-playground
      parameters.region: us
      looker_history.dashboard_title: "-NULL"
    sorts: [jobs_by_project.total_gb_processed desc 0]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: jobs_by_project.total_gb_processed,
            id: jobs_by_project.total_gb_processed, name: Total Gb Processed}, {axisId: jobs_by_project.total_bytes_billed,
            id: jobs_by_project.total_bytes_billed, name: Total Bytes Billed}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: jobs_by_project.job_count,
            id: jobs_by_project.job_count, name: Job Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    row: 8
    col: 0
    width: 12
    height: 15
  - title: Jobs by User
    name: Jobs by User
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_column
    fields: [jobs_by_project.total_gb_processed, jobs_by_project.job_count, looker_history.user_name,
      looker_history.user_email]
    filters:
      parameters.project_name: sam-pitcher-playground
      parameters.region: us
      looker_history.user_name: "-NULL"
    sorts: [jobs_by_project.total_gb_processed desc 0]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: jobs_by_project.total_gb_processed,
            id: jobs_by_project.total_gb_processed, name: Total Gb Processed}, {axisId: jobs_by_project.total_bytes_billed,
            id: jobs_by_project.total_bytes_billed, name: Total Bytes Billed}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: jobs_by_project.job_count,
            id: jobs_by_project.job_count, name: Job Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      jobs_by_project.total_gb_processed: "#E8710A"
      jobs_by_project.job_count: "#079c98"
    defaults_version: 1
    hidden_pivots: {}
    row: 8
    col: 12
    width: 12
    height: 15
  - title: Jobs by Explore
    name: Jobs by Explore
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_column
    fields: [looker_history.query_model, looker_history.query_explore, jobs_by_project.total_gb_processed,
      jobs_by_project.job_count, jobs_by_project.total_slot_ms]
    filters:
      parameters.project_name: sam-pitcher-playground
      parameters.region: us
      looker_history.query_model: "-NULL"
    sorts: [jobs_by_project.total_gb_processed desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: jobs_by_project.total_gb_processed,
            id: jobs_by_project.total_gb_processed, name: Total Gb Processed}, {axisId: jobs_by_project.total_bytes_billed,
            id: jobs_by_project.total_bytes_billed, name: Total Bytes Billed}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: jobs_by_project.job_count,
            id: jobs_by_project.job_count, name: Job Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 0
    width: 12
    height: 8
  - title: Jobs by Explore (Date)
    name: Jobs by Explore (Date)
    model: bigquery-velo
    explore: jobs_by_project
    type: looker_column
    fields: [looker_history.query_explore, jobs_by_project.total_gb_processed, jobs_by_project.creation_date]
    pivots: [looker_history.query_explore]
    fill_fields: [jobs_by_project.creation_date]
    filters:
      parameters.project_name: sam-pitcher-playground
      parameters.region: us
      looker_history.query_model: "-NULL"
    sorts: [looker_history.query_explore, jobs_by_project.total_gb_processed desc
        0]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: jobs_by_project.total_gb_processed,
            id: jobs_by_project.total_gb_processed, name: Total Gb Processed}, {axisId: jobs_by_project.total_bytes_billed,
            id: jobs_by_project.total_bytes_billed, name: Total Bytes Billed}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: jobs_by_project.job_count,
            id: jobs_by_project.job_count, name: Job Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 12
    width: 12
    height: 8
