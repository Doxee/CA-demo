- view: staging_aggregation_event
  sql_table_name: public.staging_aggregation_event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: deliverer
    type: string
    sql: ${TABLE}.deliverer

  - dimension: delivery_area
    type: string
    sql: ${TABLE}.delivery_area

  - dimension: distribution_channel
    type: string
    sql: ${TABLE}.distribution_channel

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: printer
    type: string
    sql: ${TABLE}.printer

  - dimension: province
    type: string
    sql: ${TABLE}.province

  - dimension: range_sheets
    type: number
    sql: ${TABLE}.range_sheets

  - dimension: range_weight
    type: number
    sql: ${TABLE}.range_weight

  - dimension: rate_zone
    type: string
    sql: ${TABLE}.rate_zone

  - dimension: work_unit_name
    type: string
    sql: ${TABLE}.work_unit_name

  - dimension: work_unit_size
    type: string
    sql: ${TABLE}.work_unit_size

  - dimension: zip_code
    type: string
    sql: ${TABLE}.zip_code

  - measure: count
    type: count
    drill_fields: [id, work_unit_name]

