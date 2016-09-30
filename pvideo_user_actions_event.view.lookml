- view: pvideo_user_actions_event
  sql_table_name: public.pvideo_user_actions_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: call_to_action_click_id
    type: string
    sql: ${TABLE}.call_to_action_click_id

  - dimension_group: call_to_action_click
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.call_to_action_click_time

  - dimension_group: close_browser_window
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.close_browser_window

  - dimension: document_id
    type: string
    sql: ${TABLE}.document_id

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: open_popup
    type: string
    sql: ${TABLE}.open_popup

  - dimension: pause_time
    type: string
    sql: ${TABLE}.pause_time

  - dimension: play_time
    type: string
    sql: ${TABLE}.play_time

  - dimension: progress
    type: string
    sql: ${TABLE}.progress

  - dimension: scene_change_from_to
    type: string
    sql: ${TABLE}.scene_change_from_to

  - dimension: seek_to
    type: string
    sql: ${TABLE}.seek_to

  - measure: count
    type: count
    drill_fields: [id]
    
  - measure: amount_of_pause_clicks
    type: count_distinct
    sql: ${pause_time}
    
  - measure: amount_of_play_clicks
    type: count_distinct
    sql: ${play_time}
    
  - measure: event_number
    type: count_distinct
    sql: ${document_id}
  
  - measure: amount_of_call_to_action_clicks
    type: count
    drill_fields: count(${call_to_action_click_id}) where ${call_to_action_click_id} is not null
    
  - measure: distinct_doc_id
    type: count_distinct
    sql: ${document_id}

    
    
    
    
    
    

