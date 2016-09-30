- view: legal_electronic_archiving_registry
  sql_table_name: public.legal_electronic_archiving_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: automatic_storage
    type: yesno
    sql: ${TABLE}.automatic_storage

  - dimension: company_code
    type: string
    sql: ${TABLE}.company_code

  - dimension: continuity_check
    type: yesno
    sql: ${TABLE}.continuity_check

  - dimension_group: creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.creation_date

  - dimension: document_nature
    type: string
    sql: ${TABLE}.document_nature

  - dimension_group: document_period
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.document_period

  - dimension: document_type
    type: string
    sql: ${TABLE}.document_type

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: id_pdv
    type: string
    sql: ${TABLE}.id_pdv

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: name_pdv
    type: string
    sql: ${TABLE}.name_pdv

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

