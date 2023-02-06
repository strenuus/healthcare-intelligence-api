# SmrfClient::BillingCodeAndType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_code_type** | [**BillingCodeType**](BillingCodeType.md) |  | [optional] |
| **billing_code** | **String** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::BillingCodeAndType.new(
  billing_code_type: null,
  billing_code: G0141
)
```

