- view: email_opening_event
  sql_table_name: public.email_opening_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: geolocalization
    type: string
    sql: ${TABLE}.geolocalization

  - dimension: lot_id
    type: string
    sql: ${TABLE}.lot_id

  - dimension: person_id
    type: string
    sql: ${TABLE}.person_id

  - dimension: shipment_id
    type: string
    sql: ${TABLE}.shipment_id

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

