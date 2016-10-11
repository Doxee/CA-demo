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

  - dimension: Percentages
    type: number
    value_format: '0%'
    sql: |
        CASE WHEN ${TABLE}.progress < 10 THEN 0
             ELSE ROUND(${TABLE}.progress/100,1)
        END     

  - dimension: scene_change_from_to
    type: string
    sql: ${TABLE}.scene_change_from_to

  - dimension: seek_to
    type: string
    sql: ${TABLE}.seek_to
    
  - measure: View_Progress
    type: count
    drill_fields: [id]
    
  - measure: Pause
    type: count
    drill_fields: ${pause_time}
    
  - measure: Play
    type: count
    drill_fields: ${play_time}
    
  - measure: event_number
    type: count_distinct
    sql: ${document_id}
  
  - measure: unique_users  
    type: count_distinct
  - measure: amount_of_call_to_action_clicks
    type: count
    drill_fields: count(${call_to_action_click_id}) where ${call_to_action_click_id} is not null
    
  - measure: distinct_doc_id
    type: count_distinct
    sql: ${document_id}

    
    
    
    
    
    

