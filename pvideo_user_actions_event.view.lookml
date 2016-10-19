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
    
  - dimension: hash_zip
    type: string
    sql: ${TABLE}.hash_zip

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id
    hidden: true

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
    type: number
    sql: round(${TABLE}.progress/100,1)
    value_format: '0%'
    
  #- dimension: percentage
  #  type: number
  #  sql: |
  #      CASE
  #          WHEN round(${progress},0) between 0 and 5 then 0
  #          WHEN round(${progress},0) between 5 and 15 then 10
  #          WHEN round(${progress},0) between 16 and 25 then 20
  #          WHEN round(${progress},0) between 26 and 35 then 30
  #          WHEN round(${progress},0) between 36 and 45 then 40
  #          WHEN round(${progress},0) between 46 and 55 then 50
  #          WHEN round(${progress},0) between 56 and 65 then 60
  #          WHEN round(${progress},0) between 66 and 75 then 70
  #          WHEN round(${progress},0) between 76 and 85 then 80
  #          when round(${progress},0) between 86 and 99 then 90
  #          when round(${progress},0) = 100 then 100
  #      END
  #  value_format: '0\%'    
    
  - dimension: person_id
    type: string
    sql: substring(${TABLE}.event_id, 0, strpos(${TABLE}.event_id,','))

  - dimension: scene_change_from_to
    type: string
    sql: ${TABLE}.scene_change_from_to

  - dimension: seek_to
    type: string
    sql: ${TABLE}.seek_to
    
# MEASURES START HERE    
    
  - measure: total_view_progress
    type: running_total
    sql: count(${progress})
    
  - measure: view_progress
    type: count
    drill_fields: [progress]
  
  - measure: percent_of_total
    type: percent_of_total
    sql: count(distinct ${person_id})
    
  - measure: count_pause
    type: count
    filter:
      pause_time: '-Undefined'
    drill_fields: [pause_time]
    
  - measure: count_play
    type: count
    filter:
      play_time: '-Undefined'
    drill_fields: [play_time]
    
  - measure: unique_users
    type: count_distinct
    sql: ${person_id}  