- view: delivery_event
  sql_table_name: public.delivery_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: delivery_status
    type: string
    sql: ${TABLE}.delivery_status

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

