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
    hidden: true

  - dimension: geolocalization
    type: string
    sql: ${TABLE}.gelocalization
    
  - dimension: position
    type: location
    sql_latitude: ${latitude}
    sql_longitude: ${longitude}
  
  - dimension: latitude
    type: number
    sql: |
          CASE
            WHEN ${geolocalization} ~ 'lat:[0-9]{1,2}\.*[0-9]{0,};long:[0-9]{1,2}\.*[0-9]{0,}' THEN cast(replace(split_part(${geolocalization}, ';', 1),'lat:','') as float)
            WHEN ${geolocalization} ~ 'long:[0-9]{1,2}\.*[0-9]{0,};lat:[0-9]{1,2}\.*[0-9]{0,}' THEN cast(replace(split_part(${geolocalization}, ';', 2),'lat:','') as float)
          END
  
  - dimension: longitude
    type: number
    sql: |
          CASE
            WHEN ${geolocalization} ~ 'lat:[0-9]{1,2}\.*[0-9]{0,};long:[0-9]{1,2}\.*[0-9]{0,}' THEN cast(replace(split_part(${geolocalization}, ';', 2),'long:','') as float)
            WHEN ${geolocalization} ~ 'long:[0-9]{1,2}\.*[0-9]{0,};lat:[0-9]{1,2}\.*[0-9]{0,}' THEN cast(replace(split_part(${geolocalization}, ';', 1),'long:','') as float)
          END

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
    
 # - measure: Users
 #   type: count
 #   drill_fields: [id]
    
  - measure: opened_videos_number
    type: count
    drill_fields: count_distinct(${event_id})

