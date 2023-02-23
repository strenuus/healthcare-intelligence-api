# SmrfClient::ApplicableSpecialtiesObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicable_specialties** | **String** | intersection of specialties of the provider and of the billing code | [optional] |

## Example

```ruby
require 'smrf_client'

instance = SmrfClient::ApplicableSpecialtiesObject.new(
  applicable_specialties: 235Z00000X|Speech-Language Pathologist
)
```

