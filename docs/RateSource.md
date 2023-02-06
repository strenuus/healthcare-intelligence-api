# SmrfClient::RateSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_source_id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **identifier** | **String** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::RateSource.new(
  rate_source_id: 10,
  name: First Choice Health,
  identifier: firstchoice
)
```

