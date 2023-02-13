{{
  config(
    materialized='view'
  )
}}
SELECT * FROM {{ source('tap_eu_ted', 'documents') }} LIMIT 5