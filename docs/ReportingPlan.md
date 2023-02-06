# SmrfClient::ReportingPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_source_id** | **Integer** |  | [optional] |
| **reporting_plan_id** | **Integer** |  | [optional] |
| **plan_name** | **String** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **plan_id_type** | **String** |  | [optional] |
| **plan_market_type** | **String** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::ReportingPlan.new(
  rate_source_id: 10,
  reporting_plan_id: 9,
  plan_name: TITAN FARMS LLC,
  plan_id: 562115242,
  plan_id_type: null,
  plan_market_type: null
)
```

