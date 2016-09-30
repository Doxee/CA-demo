- view: job_registry
  sql_table_name: public.job_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: document_typology
    type: string
    sql: ${TABLE}.document_typology

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: output_size
    type: number
    sql: ${TABLE}.output_size

  - dimension: total_attachments
    type: number
    sql: ${TABLE}.total_attachments

  - dimension: total_documents
    type: number
    sql: ${TABLE}.total_documents

  - dimension: total_lots
    type: number
    sql: ${TABLE}.total_lots

  - dimension: total_money_amount
    type: number
    sql: ${TABLE}.total_money_amount

  - dimension: total_pages
    type: number
    sql: ${TABLE}.total_pages

  - dimension: total_sheets
    type: number
    sql: ${TABLE}.total_sheets

  - dimension: total_shipments
    type: number
    sql: ${TABLE}.total_shipments

  - dimension: version_name
    type: string
    sql: ${TABLE}.version_name

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name, version_name]

