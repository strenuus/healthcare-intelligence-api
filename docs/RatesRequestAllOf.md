# SmrfClient::RatesRequestAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **sort_by** | **String** |  | [optional] |
| **sort_direction** | **String** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::RatesRequestAllOf.new(
  limit: 1000,
  sort_by: null,
  sort_direction: null
)
```

