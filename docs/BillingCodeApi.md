# SmrfClient::BillingCodeApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**billing_codes_get**](BillingCodeApi.md#billing_codes_get) | **GET** /billing_codes | Returns all billing codes |
| [**billing_codes_search_get**](BillingCodeApi.md#billing_codes_search_get) | **GET** /billing_codes/search | Returns billing codes for required parameters |


## billing_codes_get

> <Array<BillingCodesGet200ResponseInner>> billing_codes_get

Returns all billing codes

### Examples

```ruby
require 'time'
require 'smrf_client'

api_instance = SmrfClient::BillingCodeApi.new

begin
  # Returns all billing codes
  result = api_instance.billing_codes_get
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling BillingCodeApi->billing_codes_get: #{e}"
end
```

#### Using the billing_codes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillingCodesGet200ResponseInner>>, Integer, Hash)> billing_codes_get_with_http_info

```ruby
begin
  # Returns all billing codes
  data, status_code, headers = api_instance.billing_codes_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillingCodesGet200ResponseInner>>
rescue SmrfClient::ApiError => e
  puts "Error when calling BillingCodeApi->billing_codes_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;BillingCodesGet200ResponseInner&gt;**](BillingCodesGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## billing_codes_search_get

> <Array<BillingCodeAndType>> billing_codes_search_get(opts)

Returns billing codes for required parameters

### Examples

```ruby
require 'time'
require 'smrf_client'

api_instance = SmrfClient::BillingCodeApi.new
opts = {
  rate_source_id: 56, # Integer | The id of the rate source to query against
  reporting_plan_ids: 56 # Integer | The ids of reporting plans to query against
}

begin
  # Returns billing codes for required parameters
  result = api_instance.billing_codes_search_get(opts)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling BillingCodeApi->billing_codes_search_get: #{e}"
end
```

#### Using the billing_codes_search_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillingCodeAndType>>, Integer, Hash)> billing_codes_search_get_with_http_info(opts)

```ruby
begin
  # Returns billing codes for required parameters
  data, status_code, headers = api_instance.billing_codes_search_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillingCodeAndType>>
rescue SmrfClient::ApiError => e
  puts "Error when calling BillingCodeApi->billing_codes_search_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_source_id** | **Integer** | The id of the rate source to query against | [optional] |
| **reporting_plan_ids** | **Integer** | The ids of reporting plans to query against | [optional] |

### Return type

[**Array&lt;BillingCodeAndType&gt;**](BillingCodeAndType.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
