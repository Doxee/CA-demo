- view: purl_download_event
  sql_table_name: public.purl_download_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: document_size
    type: number
    sql: ${TABLE}.document_size

  - dimension: document_typology
    type: string
    sql: ${TABLE}.document_typology

  - dimension_group: download
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.download_date

  - dimension_group: download_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.download_end_date

  - dimension: download_number
    type: number
    sql: ${TABLE}.download_number

  - dimension_group: download_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.download_start_date

  - dimension: download_status
    type: string
    sql: ${TABLE}.download_status

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension_group: expiration
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expiration_date

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: lot_id
    type: string
    sql: ${TABLE}.lot_id

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

