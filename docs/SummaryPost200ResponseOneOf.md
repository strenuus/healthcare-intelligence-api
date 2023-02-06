# SmrfClient::SummaryPost200ResponseOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicable_specialties** | **Array&lt;String&gt;** |  | [optional] |
| **count** | **Integer** |  | [optional] |
| **maximum_rate** | **Float** |  | [optional] |
| **median_rate** | **Float** |  | [optional] |
| **minimum_rate** | **Float** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::SummaryPost200ResponseOneOf.new(
  applicable_specialties: null,
  count: 974,
  maximum_rate: 302.5,
  median_rate: 100.5,
  minimum_rate: 302.5
)
```

