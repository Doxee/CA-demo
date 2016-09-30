- view: job_event
  sql_table_name: public.job_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.create_date

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: event_type
    type: string
    sql: ${TABLE}.event_type

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension_group: run_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.run_end_date

  - dimension_group: run_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.run_start_date

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

