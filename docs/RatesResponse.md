# SmrfClient::RatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tin_name** | **String** |  | [optional] |
| **tin_value** | **String** |  | [optional] |
| **npi** | **Integer** |  | [optional] |
| **npi_specialties** | **Array&lt;String&gt;** |  | [optional] |
| **applicable_specialties** | **Array&lt;String&gt;** |  | [optional] |
| **provider_name** | **String** |  | [optional] |
| **negotiated_rate** | **Float** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::RatesResponse.new(
  tin_name: Multicare Health System,
  tin_value: 46-0319070,
  npi: 1275827826,
  npi_specialties: null,
  applicable_specialties: null,
  provider_name: Daniel Mwanza, CNA, CRNA,
  negotiated_rate: 3500.64
)
```

