# SmrfClient::RatesUniqueValuesPost200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'smrf_client'

SmrfClient::RatesUniqueValuesPost200Response.openapi_one_of
# =>
# [
#   :'Array<NpiObject>',
#   :'Array<ProviderNameObject>',
#   :'Array<RatesUniqueValuesPost200ResponseOneOfInner1>',
#   :'Array<RatesUniqueValuesPost200ResponseOneOfInner>',
#   :'Array<TinValueObject>'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'smrf_client'

SmrfClient::RatesUniqueValuesPost200Response.build(data)
# => #<Array<NpiObject>:0x00007fdd4aab02a0>

SmrfClient::RatesUniqueValuesPost200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<NpiObject>`
- `Array<ProviderNameObject>`
- `Array<RatesUniqueValuesPost200ResponseOneOfInner1>`
- `Array<RatesUniqueValuesPost200ResponseOneOfInner>`
- `Array<TinValueObject>`
- `nil` (if no type matches)

