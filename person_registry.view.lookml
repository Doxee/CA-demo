- view: person_registry
  sql_table_name: public.person_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: person_id
    type: string
    sql: ${TABLE}.person_id

  - dimension: postal_area
    type: string
    sql: ${TABLE}.postal_area

  - dimension: rate_zone
    type: string
    sql: ${TABLE}.rate_zone

  - dimension: recipient_code
    type: string
    sql: ${TABLE}.recipient_code

  - dimension: recipient_fiscal_code
    type: string
    sql: ${TABLE}.recipient_fiscal_code

  - dimension: recipient_name
    type: string
    sql: ${TABLE}.recipient_name

  - dimension: shipment_address
    type: string
    sql: ${TABLE}.shipment_address

  - dimension: shipment_category
    type: string
    sql: ${TABLE}.shipment_category

  - dimension: shipment_city
    type: string
    sql: ${TABLE}.shipment_city

  - dimension: shipment_province
    type: string
    sql: ${TABLE}.shipment_province

  - dimension: shipment_zip_code
    type: string
    sql: ${TABLE}.shipment_zip_code

  - measure: count
    type: count
    drill_fields: [id, recipient_name]

