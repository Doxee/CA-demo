- view: document_composition
  sql_table_name: public.document_composition
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: attachment_range
    type: string
    sql: ${TABLE}.attachment_range

  - dimension: emitter_type
    type: string
    sql: ${TABLE}.emitter_type

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

  - dimension: lot_id
    type: string
    sql: ${TABLE}.lot_id

  - dimension: payment_slip
    type: yesno
    sql: ${TABLE}.payment_slip

  - dimension: person_id
    type: string
    sql: ${TABLE}.person_id

  - dimension: sheets_range
    type: string
    sql: ${TABLE}.sheets_range

  - dimension: shipment_id
    type: string
    sql: ${TABLE}.shipment_id

  - dimension: size
    type: number
    sql: ${TABLE}.size

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_time

  - dimension: target_name
    type: string
    sql: ${TABLE}.target_name

  - dimension: total_attachments
    type: number
    sql: ${TABLE}.total_attachments

  - dimension: total_documents
    type: number
    sql: ${TABLE}.total_documents

  - dimension: total_envelopes
    type: number
    sql: ${TABLE}.total_envelopes

  - dimension: total_pages
    type: number
    sql: ${TABLE}.total_pages

  - dimension: total_payment_slips
    type: number
    sql: ${TABLE}.total_payment_slips

  - dimension: total_purls
    type: number
    sql: ${TABLE}.total_purls

  - dimension: total_sheets
    type: number
    sql: ${TABLE}.total_sheets

  - dimension: total_shipments
    type: number
    sql: ${TABLE}.total_shipments

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - measure: count
    type: count
    drill_fields: [id, work_unit_name, target_name]

