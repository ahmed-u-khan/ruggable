select 
    size
    , regexp_replace(regexp_replace(size, '"', '_in'), "'", '_ft') as actual_size
    , shape
    , price
    , width
    , sqft
    , type
    , stock
    , height
    , variant
    , p_id as pid
    , pad_id
    , dw_insert_timestamp
from {{ ref('base_rugs_usa_pads_upsell') }}