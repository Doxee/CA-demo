- connection: doxeecloudanalytics01

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

#- explore: pvideo_user_actions_event

- explore: pvideo_user_actions_registry
  view_label: "pVideo User Actions Events"
  joins:
    - join: pvideo_user_actions_event
      type: inner
      relationship: one_to_one
      sql_on: ${pvideo_user_actions_event.document_id} = ${pvideo_user_actions_registry.document_id}

#- explore: bom_event

#- explore: bom_registry

#- explore: data_transformation

#- explore: delivery_event

#- explore: delivery_registry

#- explore: digital_archiving_event

#- explore: digital_archiving_registry

#- explore: document_composition

#- explore: edox_event

#- explore: email_opening_event

#- explore: job_event

#- explore: job_registry

#- explore: legal_electronic_archiving_event

#- explore: legal_electronic_archiving_registry

#- explore: person_registry

#- explore: purl_download_event

#- explore: shipment_registry

#- explore: staging_aggregation_event
