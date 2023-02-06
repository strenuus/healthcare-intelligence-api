# SmrfClient::SummaryPost200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'smrf_client'

SmrfClient::SummaryPost200Response.openapi_one_of
# =>
# [
#   :'SummaryPost200ResponseOneOf',
#   :'SummaryPost200ResponseOneOf1',
#   :'SummaryPost200ResponseOneOf2',
#   :'SummaryPost200ResponseOneOf3',
#   :'SummaryPost200ResponseOneOf4',
#   :'SummaryPost200ResponseOneOf5',
#   :'SummaryPost200ResponseOneOf6'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'smrf_client'

SmrfClient::SummaryPost200Response.build(data)
# => #<SummaryPost200ResponseOneOf:0x00007fdd4aab02a0>

SmrfClient::SummaryPost200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SummaryPost200ResponseOneOf`
- `SummaryPost200ResponseOneOf1`
- `SummaryPost200ResponseOneOf2`
- `SummaryPost200ResponseOneOf3`
- `SummaryPost200ResponseOneOf4`
- `SummaryPost200ResponseOneOf5`
- `SummaryPost200ResponseOneOf6`
- `nil` (if no type matches)

