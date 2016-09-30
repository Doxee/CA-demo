- view: pvideo_user_actions_registry
  sql_table_name: public.pvideo_user_actions_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: device_name
    type: string
    sql: ${TABLE}.device_name

  - dimension: device_type
    type: string
    sql: ${TABLE}.device_type

  - dimension: document_id
    type: string
    sql: ${TABLE}.document_id

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: gelocalization
    type: string
    sql: ${TABLE}.gelocalization

  - dimension: guid
    type: string
    sql: ${TABLE}.guid

  - dimension: ip
    type: string
    sql: ${TABLE}.ip

  - dimension: shipment_id
    type: string
    sql: ${TABLE}.shipment_id

  - dimension: use_case
    type: string
    sql: ${TABLE}.use_case

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent

  - measure: count
    type: count
    drill_fields: [id]
    
  - measure: opened_videos_number
    type: count
    drill_fields: count_distinct(${event_id})

