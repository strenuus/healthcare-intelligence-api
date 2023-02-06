# SmrfClient::RateSourceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_source_id** | **Integer** |  | [optional] |
| **reporting_plan_ids** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::RateSourceRequest.new(
  rate_source_id: 22,
  reporting_plan_ids: [8,11]
)
```

