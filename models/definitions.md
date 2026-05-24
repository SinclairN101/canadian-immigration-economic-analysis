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