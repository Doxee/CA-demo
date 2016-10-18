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
    sql: ${TABLE}.progress

  - dimension: percentage
    type: number
    value_format: '0\%'
    sql: |
        CASE WHEN ${progress} < 10 and ${progress} >= 0 then 0
            WHEN ${progress} < 20 and ${progress} > 10 then 10
            WHEN ${progress} < 30 and ${progress} > 20 then 20
            WHEN ${progress} < 40 and ${progress} > 30 then 30
            WHEN ${progress} < 50 and ${progress} > 40 then 40
            WHEN ${progress} < 60 and ${progress} > 50 then 50
            WHEN ${progress} < 70 and ${progress} > 60 then 60
            WHEN ${progress} < 80 and ${progress} > 70 then 70
            WHEN ${progress} < 90 and ${progress} > 80 then 80
            when ${progress} < 100 and ${progress} > 90 then 90
            else 100
        END
    
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
    
  - measure: view_progress
    type: running_total
    sql: count(*)
  
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