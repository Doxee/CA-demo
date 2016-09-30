- view: data_transformation
  sql_table_name: public.data_transformation
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_time

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: size
    type: number
    sql: ${TABLE}.size

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_time

  - dimension: total_discarded
    type: number
    sql: ${TABLE}.total_discarded

  - dimension: total_documents
    type: number
    sql: ${TABLE}.total_documents

  - dimension: total_input_documents
    type: number
    sql: ${TABLE}.total_input_documents

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

