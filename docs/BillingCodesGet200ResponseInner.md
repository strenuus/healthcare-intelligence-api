# SmrfClient::BillingCodesGet200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_code_type** | [**BillingCodeType**](BillingCodeType.md) |  | [optional] |
| **billing_code** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::BillingCodesGet200ResponseInner.new(
  billing_code_type: null,
  billing_code: G0141,
  description: Biopsy of large bowel using an endoscope which is inserted through abdominal opening into large bowel
)
```

