- view: edox_event
  sql_table_name: public.edox_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: device_type
    type: string
    sql: ${TABLE}.device_type

  - dimension: doc_id
    type: string
    sql: ${TABLE}.doc_id

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: geolocalization
    type: string
    sql: ${TABLE}.geolocalization

  - dimension: shipment_id
    type: string
    sql: ${TABLE}.shipment_id

  - dimension: use_case
    type: string
    sql: ${TABLE}.use_case

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

