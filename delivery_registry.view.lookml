- view: delivery_registry
  sql_table_name: public.delivery_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: attachment_range
    type: string
    sql: ${TABLE}.attachment_range

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: deliverer
    type: string
    sql: ${TABLE}.deliverer

  - dimension: delivery_area
    type: string
    sql: ${TABLE}.delivery_area

  - dimension: delivery_product
    type: string
    sql: ${TABLE}.delivery_product

  - dimension: distribution_channel
    type: string
    sql: ${TABLE}.distribution_channel

  - dimension: document_typology
    type: string
    sql: ${TABLE}.document_typology

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: gateway_type
    type: string
    sql: ${TABLE}.gateway_type

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: lot_id
    type: string
    sql: ${TABLE}.lot_id

  - dimension: media_format
    type: string
    sql: ${TABLE}.media_format

  - dimension: payment_slip
    type: yesno
    sql: ${TABLE}.payment_slip

  - dimension: printer
    type: string
    sql: ${TABLE}.printer

  - dimension: province
    type: string
    sql: ${TABLE}.province

  - dimension_group: response
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.response_date

  - dimension: response_status
    type: string
    sql: ${TABLE}.response_status

  - dimension: sheet_range
    type: string
    sql: ${TABLE}.sheet_range

  - dimension: size
    type: number
    sql: ${TABLE}.size

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

  - dimension: undelivery_error_cause
    type: string
    sql: ${TABLE}.undelivery_error_cause

  - dimension: use_case
    type: string
    sql: ${TABLE}.use_case

  - dimension: weight_range
    type: string
    sql: ${TABLE}.weight_range

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - dimension: zip_code
    type: string
    sql: ${TABLE}.zip_code

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

