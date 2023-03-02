# SmrfClient::SummaryPost200ResponseOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicable_specialties** | **String** | intersection of specialties of the provider and of the billing code | [optional] |
| **npi_count** | **Integer** |  | [optional] |
| **count** | **Integer** |  | [optional] |
| **maximum_rate** | **Float** |  | [optional] |
| **median_rate** | **Float** |  | [optional] |
| **minimum_rate** | **Float** |  | [optional] |
| **q1** | **Float** |  | [optional] |
| **q3** | **Float** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::SummaryPost200ResponseOneOf.new(
  applicable_specialties: 235Z00000X|Speech-Language Pathologist,
  npi_count: 86,
  count: 974,
  maximum_rate: 302.5,
  median_rate: 100.5,
  minimum_rate: 302.5,
  q1: 95.0,
  q3: 275.5
)
```

