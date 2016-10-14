- view: digital_archiving_registry
  sql_table_name: public.digital_archiving_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: document_class
    type: string
    sql: ${TABLE}.document_class

  - dimension: document_number
    type: number
    sql: ${TABLE}.document_number

  - dimension: document_size
    type: number
    sql: ${TABLE}.document_size

  - dimension: document_type
    type: string
    sql: ${TABLE}.document_type

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: index_number
    type: number
    sql: ${TABLE}.index_number

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension_group: loading
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.loading_time

  - dimension: person_id
    type: string
    sql: ${TABLE}.person_id

  - dimension: retention
    type: number
    sql: ${TABLE}.retention

  - dimension: shipment_id
    type: string
    sql: ${TABLE}.shipment_id

  - dimension: use_case
    type: string
    sql: ${TABLE}.use_case

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

  - measure: unique_users
    type: count_distinct
    sql: ${person_id}


