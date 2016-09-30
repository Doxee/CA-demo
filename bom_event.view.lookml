- view: bom_event
  sql_table_name: public.bom_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: event_type
    type: string
    sql: ${TABLE}.event_type

  - dimension_group: inception
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.inception_date

  - dimension: label
    type: string
    sql: ${TABLE}.label

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

