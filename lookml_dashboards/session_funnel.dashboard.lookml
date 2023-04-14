- dashboard: session_funnel
  title: Session Funnel
  layout: newspaper
  description: ''
  preferred_slug: clsXRFo5seoUcrLfgTd1fe
  elements:
  - title: Session Funnel
    name: Session Funnel
    model: agolis_allen_first_gaming_events
    explore: funnel_explorer
    type: looker_column
    fields: [funnel_explorer.count_sessions_event1, funnel_explorer.count_sessions_event12,
      funnel_explorer.count_sessions_event123, funnel_explorer.count_sessions_event1234,
      session_facts.game_version]
    filters:
      funnel_explorer.event_time: '2023'
    sorts: [session_facts.game_version]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: funnel_explorer.count_sessions_event1,
            id: funnel_explorer.count_sessions_event1, name: '"Match_Started"'}, {
            axisId: funnel_explorer.count_sessions_event12, id: funnel_explorer.count_sessions_event12,
            name: '"Match_Ended"'}, {axisId: funnel_explorer.count_sessions_event123,
            id: funnel_explorer.count_sessions_event123, name: '"Skin_Unlocked"'},
          {axisId: funnel_explorer.count_sessions_event1234, id: funnel_explorer.count_sessions_event1234,
            name: '"in_app_purchase"'}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: log}]
    show_dropoff: true
    defaults_version: 1
    listen:
      Date Range: funnel_explorer.session_start_date
      Game Name: funnel_explorer.game_name
      Game Version: session_facts.game_version
      Event 1: funnel_explorer.event_1
      Event 2: funnel_explorer.event_2
      Event 3: funnel_explorer.event_3
      Event 4: funnel_explorer.event_4
    row: 0
    col: 8
    width: 16
    height: 12
  - name: "<span class='fa fa-filter'> Session Funnel </span>"
    type: text
    title_text: "<span class='fa fa-filter'> Session Funnel </span>"
    body_text: "This flexible funnel tracks movement of players through sequences\
      \ of events (defined in the filters). Identifying where the drops are and addressing\
      \ retention issues. \n\n**Note, this funnel looks at events that occurred within\
      \ a session (and in order), it can be modified in any way needed**"
    row: 0
    col: 0
    width: 8
    height: 12
  filters:
  - name: Date Range
    title: Date Range
    type: field_filter
    default_value: 2023/02/15 00:00 to 2023/03/02
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: agolis_allen_first_gaming_events
    explore: funnel_explorer
    listens_to_filters: []
    field: funnel_explorer.event_time
  - name: Game Name
    title: Game Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: agolis_allen_first_gaming_events
    explore: funnel_explorer
    listens_to_filters: []
    field: funnel_explorer.game_name
  - name: Game Version
    title: Game Version
    type: field_filter
    default_value: 1.13.2,1.14.0,1.15.0
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: agolis_allen_first_gaming_events
    explore: funnel_explorer
    listens_to_filters: []
    field: session_facts.game_version
  - name: Event 1
    title: Event 1
    type: field_filter
    default_value: '"Harvest_Done"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: agolis_allen_first_gaming_events
    explore: funnel_explorer
    listens_to_filters: [Game Name]
    field: funnel_explorer.event_1
  - name: Event 2
    title: Event 2
    type: field_filter
    default_value: '"Gem_Income"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: agolis_allen_first_gaming_events
    explore: funnel_explorer
    listens_to_filters: [Game Name]
    field: funnel_explorer.event_2
  - name: Event 3
    title: Event 3
    type: field_filter
    default_value: '"Gem_Spend"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: agolis_allen_first_gaming_events
    explore: funnel_explorer
    listens_to_filters: [Game Name]
    field: funnel_explorer.event_3
  - name: Event 4
    title: Event 4
    type: field_filter
    default_value: '"in_app_purchase"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: agolis_allen_first_gaming_events
    explore: funnel_explorer
    listens_to_filters: [Game Name]
    field: funnel_explorer.event_4
