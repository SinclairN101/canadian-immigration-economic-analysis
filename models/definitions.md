{% docs loaded_at %}

Timestamp indicating when the record was loaded into the raw ingestion layer.

This field is generated during ingestion and is used for:
- data freshness monitoring
- ingestion auditing
- pipeline observability
- source validation

Timezone is UTC.

{% enddocs %}


{% docs source_system %}

The originating source system or provider for the dataset.

Examples:
- statistics_canada
- bank_of_canada
- federal_reserve_economic_data
- canadian_real_estate_association

{% enddocs %}


{% docs source_table %}

The original source table or dataset name used during ingestion.

This field helps trace records back to the originating public dataset or API endpoint.

Examples:
- 17-10-0009-01
- 36-10-0706-01
- GDPC1
- MLS_HPI

{% enddocs %}


{% docs source_url %}

The original download URL or API endpoint used to retrieve the source data.

Used for:
- lineage tracking
- reproducibility
- ingestion auditing
- source verification
{% enddocs %}

{% docs stg_statistics_canada_population_estimates %}

Staging model for Statistics Canada quarterly population estimates.

This model standardizes raw population estimate data from Statistics Canada into a cleaner structure for downstream immigration, demographic, and economic analysis.

{% enddocs %}


{% docs reference_period %}

The reporting period associated with the record.

For this project, this may represent a month, quarter, or year depending on the source table.

{% enddocs %}


{% docs region %}

The geographic area associated with the record.

Examples may include Canada, provinces, territories, cities, or housing markets depending on the source dataset.

{% enddocs %}


{% docs dguid %}

Statistics Canada geographic identifier used to uniquely identify a geographic region.

This identifier is stable across reporting periods and is commonly used for joining geographic datasets across Statistics Canada tables.

Note:
Some historical aggregate regions, such as "Northwest Territories including Nunavut", may have a null geographic identifier because of legacy boundary definitions in the source data.

This known exception is handled by the singular dbt test `assert_population_estimates_current_regions_have_geographic_identifier`, which allows this historical aggregate while still failing if any current region is missing a geographic identifier.

{% enddocs %}


{% docs unit_of_measure %}

Unit of measure for the metric value.

Examples may include persons, percent, index, dollars, or thousands.

{% enddocs %}


{% docs unit_of_measure_id %}

Statistics Canada identifier for the unit of measure.

{% enddocs %}


{% docs scalar_factor %}

Scale applied to the reported value.

Examples may include units, thousands, millions, or percentage points.

{% enddocs %}


{% docs scalar_id %}

Statistics Canada identifier for the scalar factor.

{% enddocs %}


{% docs vector %}

Statistics Canada vector identifier for the time series.

{% enddocs %}


{% docs coordinate %}

Statistics Canada coordinate value identifying the specific table dimension combination.

{% enddocs %}


{% docs population_estimate %}

Estimated population count for the given reporting period and geography.

{% enddocs %}


{% docs status %}

Statistics Canada status flag for the record.

This may indicate suppression, data quality notes, or other source-level reporting status.

{% enddocs %}


{% docs symbol %}

Statistics Canada symbol associated with the value, if provided.

{% enddocs %}


{% docs terminated %}

Indicator from Statistics Canada showing whether a series has been terminated.

{% enddocs %}


{% docs decimals %}

Number of decimal places used by the source dataset.

{% enddocs %}

{% docs stg_statistics_canada_non_permanent_residents %}

Staging model for Statistics Canada non-permanent resident population estimates.

This model standardizes non-permanent resident data for downstream immigration, labour market, housing, and economic analysis.

{% enddocs %}


{% docs non_permanent_resident_type %}

Category of non-permanent resident population reported by Statistics Canada.

Current source values include:
- Total, non-permanent residents
- Work and study permit holders
- Work permit holders only
- Study permit holders only
- Total, permit holders and their family members
- Total, asylum claimants, protected persons and related groups
- Asylum claimants and protected persons by permit status
- Other

These categories are used to analyze the composition and growth of temporary resident populations across Canada over time.

{% enddocs %}


{% docs non_permanent_resident_count %}

Estimated count of non-permanent residents for the reporting period and geographic region.

{% enddocs %}

{% docs stg_statistics_canada_international_migration %}

Staging model for Statistics Canada international migration and population growth components.

This model standardizes migration flow data for downstream immigration, population growth, labour market, housing, and economic analysis.

{% enddocs %}


{% docs population_growth_component %}

Population growth component reported by Statistics Canada.

Current source values include:
- Immigrants
- Emigrants
- Returning emigrants
- Net temporary emigration
- Net non-permanent residents
- Net emigration
- Non-permanent residents inflows
- Non-permanent residents outflows

These population flow categories are used to analyze how international migration contributes to population change across Canadian regions over time.

{% enddocs %}


{% docs migration_value %}

Numeric value associated with the reported population growth or migration component.

The meaning of this value depends on the selected population growth component and unit of measure.

{% enddocs %}


{% docs stg_statistics_canada_labour_force_characteristics %}

Staging model for Statistics Canada labour force characteristics.

This model standardizes labour market data used to analyze employment, unemployment, participation, and labour force trends across Canadian regions over time.

{% enddocs %}


{% docs labour_force_characteristic %}

High-level labour force category reported by Statistics Canada.

Used to segment labour market data across characteristics such as employment, unemployment, labour force participation, and related labour market measures.

{% enddocs %}


{% docs gender %}

Gender category reported in the Statistics Canada source data.

Used to segment labour market indicators by demographic group where available.

{% enddocs %}


{% docs age_group %}

Age group reported in the Statistics Canada source data.

Used to analyze labour market outcomes across different population age segments.

{% enddocs %}


{% docs labour_force_value %}

Numeric value associated with the labour force characteristic for the reporting period, geographic region, gender, age group, statistic, and data type.

The meaning of the value depends on the selected labour market statistic and unit of measure.

{% enddocs %}


{% docs labour_market_statistic %}

Labour market metric reported by Statistics Canada.

1 Employment
2	Employment rate
3	Full-time employment
4	Labour force
5	Part-time employment
6	Participation rate
7	Population
8	Unemployment
9	Unemployment rate

{% enddocs %}


{% docs labour_market_data_type %}

Classification describing how the labour market statistic is reported.

Examples 
1 Seasonally adjusted
2	Trend-cycle
3	Unadjusted

{% enddocs %}

