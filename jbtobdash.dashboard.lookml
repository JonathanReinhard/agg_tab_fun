- dashboard: jbtob
  title: jbtob
  layout: newspaper
  preferred_viewer: 'dashboards-next'
  elements:
  - title: list of category changed
    name: list of category changed
    model: agg_tab_acc_grant
    explore: products
    type: looker_grid
    fields: [products.category, products.count]
    sorts: [products.count desc]
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
    series_types: {}
    defaults_version: 1
    listen:
      Category: products.category
    row: 0
    col: 15
    width: 9
    height: 9
  - title: histogram hello
    name: histogram
    model: agg_tab_acc_grant
    explore: products
    type: marketplace_viz_histogram::histogram-marketplace
    fields: [products.brand, products.count, products.total_sales_price]
    sorts: [products.count desc]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    bin_type: bins
    bin_style: binned_hist
    winsorization: false
    color_col: "#1A73E8"
    color_on_hover: "#338bff"
    x_axis_override: ''
    x_grids: true
    x_axis_title_font_size: 16
    x_axis_label_font_size: 12
    x_axis_label_angle: 0
    x_label_separation: 100
    y_axis_override: ''
    y_grids: true
    y_axis_title_font_size: 16
    y_axis_label_font_size: 12
    y_axis_label_angle: 0
    y_label_separation: 100
    x_axis_value_format: ''
    max_bins: '10'
    x: products_count
    y: products_total_sales_price
    heatmap_off: false
    x_hist: false
    y_hist: false
    layer_points: true
    color_scheme: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    heatmap_opacity: 0.8
    point_opacity: 0.8
    legend_orient: right
    legend_size: 16
    y_axis_value_format: ''
    points_legend_value_format: ''
    point_labels_divider: false
    point_labels: true
    point_labels_x_offset: 0
    point_labels_y_offset: 0
    point_labels_angle: 0
    point_labels_font_size: 12
    reference_line_x_p: 50
    reference_line_y_p: 50
    reference_line_x_width: 3
    reference_line_y_width: 3
    num_step_x: 103
    num_step_y: 3065
    step_size: 103
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    series_types: {}
    listen:
      Department: products.department
      Category: products.category
    row: 0
    col: 0
    width: 15
    height: 9
  filters:
  - name: Department
    title: Department
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: agg_tab_acc_grant
    explore: products
    listens_to_filters: []
    field: products.department
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: agg_tab_acc_grant
    explore: products
    listens_to_filters: []
    field: products.category
