- view: shipment_registry
  sql_table_name: public.shipment_registry
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: event_id
    type: string
    sql: ${TABLE}.event_id

  - dimension: job_id
    type: string
    sql: ${TABLE}.job_id

  - dimension: person_id
    type: string
    sql: ${TABLE}.person_id

  - dimension: shipment_id
    type: string
    sql: ${TABLE}.shipment_id

  - dimension: workunit_name
    type: string
    sql: ${TABLE}.workunit_name

  - measure: count
    type: count
    drill_fields: [id, workunit_name]

