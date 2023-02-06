# SmrfClient::PlaceOfService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_code** | [**PlaceOfServiceCode**](PlaceOfServiceCode.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::PlaceOfService.new(
  service_code: null,
  name: Emergency Room – Hospital,
  description: A portion of a hospital where emergency diagnosis and treatment of illness or injury is provided.
)
```

