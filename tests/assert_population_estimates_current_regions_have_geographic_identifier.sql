
select
    geographic_region,
    reference_period,
    geographic_identifier
from {{ ref('stg_statistics_canada_population_estimates') }}
where geographic_identifier is null
  and geographic_region != 'Northwest Territories including Nunavut'