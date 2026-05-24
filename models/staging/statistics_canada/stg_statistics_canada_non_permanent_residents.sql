with source as (

    select *
    from {{ source('raw_immigration_economy', 'raw_statistics_canada_non_permanent_residents') }}

),

renamed as (

    select

        -- Primary / Foreign Keys
        dguid as geographic_identifier,

        -- Time / Date
        parse_date('%Y-%m', ref_date) as reference_period,

        -- Dimensions
        geo as geographic_region,
        non_permanent_resident_types as non_permanent_resident_type,

        -- Measures
        safe_cast(value as numeric) as non_permanent_resident_count,

        -- Boolean / Status Flags
        safe_cast(terminated as bool) as is_terminated_series,
        status as record_status,
        symbol as record_symbol,

        -- Metadata
        uom as unit_of_measure,
        safe_cast(uom_id as int64) as unit_of_measure_id,
        scalar_factor as value_scalar_factor,
        safe_cast(scalar_id as int64) as value_scalar_identifier,
        vector as statistics_canada_vector_id,
        coordinate as statistics_canada_coordinate_id,
        safe_cast(decimals as int64) as decimal_precision,

        -- Ingestion Metadata
        safe_cast(loaded_at as timestamp) as loaded_at,
        source_system,
        source_table,
        source_url

    from source

)

select *
from renamed