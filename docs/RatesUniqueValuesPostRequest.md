# SmrfClient::RatesUniqueValuesPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |
| **rate_source** | [**RateSourceRequest**](RateSourceRequest.md) |  |  |
| **billing_code** | [**BillingCodeAndType**](BillingCodeAndType.md) |  |  |
| **service_code** | [**PlaceOfServiceCode**](PlaceOfServiceCode.md) |  | [optional] |
| **negotiation_arrangement** | [**NegotiationArrangement**](NegotiationArrangement.md) |  | [optional] |
| **billing_class** | [**BillingClass**](BillingClass.md) |  | [optional] |
| **entity_type** | [**EntityType**](EntityType.md) |  | [optional] |
| **negotiated_type** | [**NegotiatedType**](NegotiatedType.md) |  | [optional] |
| **zips** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::RatesUniqueValuesPostRequest.new(
  field: null,
  rate_source: null,
  billing_code: null,
  service_code: null,
  negotiation_arrangement: null,
  billing_class: null,
  entity_type: null,
  negotiated_type: null,
  zips: null
)
```

