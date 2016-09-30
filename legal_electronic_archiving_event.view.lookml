- view: legal_electronic_archiving_event
  sql_table_name: public.legal_electronic_archiving_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: end_job_execution
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_job_execution

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: id_pdv
    type: string
    sql: ${TABLE}.id_pdv

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: status_pdv
    type: string
    sql: ${TABLE}.status_pdv

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

