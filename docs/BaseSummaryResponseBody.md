# SmrfClient::BaseSummaryResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** |  | [optional] |
| **maximum_rate** | **Float** |  | [optional] |
| **median_rate** | **Float** |  | [optional] |
| **minimum_rate** | **Float** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::BaseSummaryResponseBody.new(
  count: 974,
  maximum_rate: 302.5,
  median_rate: 100.5,
  minimum_rate: 302.5
)
```

