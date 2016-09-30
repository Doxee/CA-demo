- view: bom_registry
  sql_table_name: public.bom_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: account_inbound
    type: string
    sql: ${TABLE}.account_inbound

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: file_name
    type: string
    sql: ${TABLE}.file_name

  - dimension: id_bom
    type: string
    sql: ${TABLE}.id_bom

  - dimension: size
    type: number
    sql: ${TABLE}.size

  - dimension: total_documents
    type: number
    sql: ${TABLE}.total_documents

  - dimension: total_pages
    type: number
    sql: ${TABLE}.total_pages

  - dimension: total_sheets
    type: number
    sql: ${TABLE}.total_sheets

  - dimension: use_case
    type: string
    sql: ${TABLE}.use_case

  - dimension: work_package_name
    type: string
    sql: ${TABLE}.work_package_name

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_package_name, work_unit_name, file_name]

