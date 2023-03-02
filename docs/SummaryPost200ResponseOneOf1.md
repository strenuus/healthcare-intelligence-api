# SmrfClient::SummaryPost200ResponseOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **counties** | **String** |  | [optional] |
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

instance = SmrfClient::SummaryPost200ResponseOneOf1.new(
  counties: null,
  npi_count: 86,
  count: 974,
  maximum_rate: 302.5,
  median_rate: 100.5,
  minimum_rate: 302.5,
  q1: 95.0,
  q3: 275.5
)
```

