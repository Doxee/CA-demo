- view: digital_archiving_event
  sql_table_name: public.digital_archiving_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: document_status
    type: string
    sql: ${TABLE}.document_status

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: shipment_id
    type: string
    sql: ${TABLE}.shipment_id

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

