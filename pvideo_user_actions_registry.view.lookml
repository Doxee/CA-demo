- view: pvideo_user_actions_registry
  sql_table_name: public.pvideo_user_actions_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month, day_of_month]
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

  - dimension: geolocalization
    type: string
    sql: ${TABLE}.geolocalization
    
  - dimension: position
    type: location
    sql_latitude: ${latitude}
    sql_longitude: ${longitude}
  
  - dimension: latitude
    type: number
    sql: cast(substring(split_part(geolocalization, ',', 1), charindex('=',geolocalization)+1) as float)
    
  - dimension: longitude
    type: number
    sql: cast(substring(split_part(geolocalization, ',', 2), charindex('=',geolocalization)+2) as float)

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
  
  - dimension: browser
    type: string
    sql_case: 
      Chrome: ${user_agent} like '%Chrome%'
      Firefox: ${user_agent} like '%Firefox%'
      Safari: ${user_agent} like '%Safari%'
      else: 'Other' 

  - measure: count
    type: count
    drill_fields: [id]
    
  - measure: Users
    type: count
    drill_fields: [id]
    
  - measure: opened_videos_number
    type: count
    drill_fields: count_distinct(${event_id})

