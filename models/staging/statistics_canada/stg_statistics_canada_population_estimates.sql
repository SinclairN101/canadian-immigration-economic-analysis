with source as (

    select *
    from {{ source('raw_immigration_economy', 'raw_statistics_canada_population_estimates') }}

),

renamed as (

    select

        -- Primary / Foreign Keys
        dguid as geographic_identifier,

        -- Time / Date
        ref_date as reference_period,

        -- Dimensions
        geo as geographic_region,

        -- Measures
        value as population_estimate,

        -- Boolean / Status Flags
        terminated as is_terminated_series,
        status as record_status,
        symbol as record_symbol,

        -- Metadata
        uom as unit_of_measure,
        uom_id as unit_of_measure_id,
        scalar_factor as value_scalar_factor,
        scalar_id as value_scalar_identifier,
        vector as statistics_canada_vector_id,
        coordinate as statistics_canada_coordinate_id,
        decimals as decimal_precision,

        -- Ingestion Metadata
        loaded_at,
        source_system,
        source_table,
        source_url

    from source

)

select *
from renamed