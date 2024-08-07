select 
    pid
    , variant
    , actual_size
    , regexp_replace(regexp_replace(actual_size, '_in', '"'), '_ft', "'") as size
    , weave_feature
    , weave_cat
    , size_grp
    , shipping_size
    , shape
    , weight
    , price
    , msrp
    , stock_level
    , depletion_level
    , low_stock
    , estimated_delivery_date
    , this_isd_range
    , status
    , origin
    , new_arrival
    , stockMsg as stock_msg
    , stockEddMsg as stocked_edd_message
    , other_stock_core
    , other_stock_compass
    , dw_insert_timestamp
from {{ ref('base_rugs_usa_variant') }}