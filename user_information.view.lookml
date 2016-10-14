- view: user_information
  derived_table:
   sql: |
      select a.call_to_action_click_id, c.person_id
      from pvideo_user_actions_event as a
      JOIN (SELECT  shipment_id, document_id
       FROM    (SELECT *,
                       ROW_NUMBER() OVER (PARTITION BY document_id) AS RowNumber
                FROM   pvideo_user_actions_registry) 
       WHERE   RowNumber = 1) as b on b.document_id = a.document_id
       join (SELECT  shipment_id, person_id
       FROM    (SELECT *,
                       ROW_NUMBER() OVER (PARTITION BY shipment_id) AS RowNumber
                FROM   digital_archiving_registry)
       WHERE   RowNumber = 1) as c on c.shipment_id = b.shipment_id
       group by a.call_to_action_click_id;
  fields:
    - dimension: action_type
      type: string
      sql: ${TABLE}.call_to_action_click_id
    
    - measure: unique_users
      type: count_distinct
      sql: ${TABLE}.person_id
    
# # You can specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.user_information
#
#   fields:
# #     Define your dimensions and measures here, like this:
#     - dimension: id
#       description: "The unique ID for each order"
#       type: number
#       sql: ${TABLE}.id
#
#     - dimension_group: created
#       description: "Transaction created date"
#       type: time
#       timeframes: [date, week, month, year]
#       sql: ${TABLE}.created_at
#
#     - measure: count
#       description: "Count of orders"
#       type: count
#
#
# # Or, you could make this view a derived table, like this:

#   fields:
# #     Define your dimensions and measures here, like this:
#     - dimension: user_id
#       description: "Unique ID for each user that has ordered"
#       type: number
#       sql: ${TABLE}.user_id
#
#     - dimension: lifetime_orders
#       description: "The total number of orders for each user"
#       type: number
#       sql: ${TABLE}.lifetime_orders
#
#     - dimension_group: most_recent_purchase
#       description: "The date when each user last ordered"
#       type: time
#       timeframes: [date, week, month, year]
#       sql: ${TABLE}.most_recent_purchase_at
#
#     - measure: total_lifetime_orders
#       description: "Use this for counting lifetime orders across many users"
#       type: sum
#       sql: ${lifetime_orders}
