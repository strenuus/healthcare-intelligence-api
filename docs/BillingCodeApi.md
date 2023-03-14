# SmrfClient::BillingCodeApi

All URIs are relative to *https://hci-test.pa.services.mdxdata.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**billing_codes_get**](BillingCodeApi.md#billing_codes_get) | **GET** /billing_codes | Returns all billing codes |
| [**billing_codes_search_post**](BillingCodeApi.md#billing_codes_search_post) | **POST** /billing_codes/search | Returns billing codes for required parameters |


## billing_codes_get

> <Array<BillingCodesGet200ResponseInner>> billing_codes_get(opts)

Returns all billing codes

### Examples

```ruby
require 'time'
require 'smrf_client'
# setup authorization
SmrfClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SmrfClient::BillingCodeApi.new
opts = {
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  # Returns all billing codes
  result = api_instance.billing_codes_get(opts)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling BillingCodeApi->billing_codes_get: #{e}"
end
```

#### Using the billing_codes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillingCodesGet200ResponseInner>>, Integer, Hash)> billing_codes_get_with_http_info(opts)

```ruby
begin
  # Returns all billing codes
  data, status_code, headers = api_instance.billing_codes_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillingCodesGet200ResponseInner>>
rescue SmrfClient::ApiError => e
  puts "Error when calling BillingCodeApi->billing_codes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |

### Return type

[**Array&lt;BillingCodesGet200ResponseInner&gt;**](BillingCodesGet200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## billing_codes_search_post

> <Array<BillingCodeAndType>> billing_codes_search_post(rate_source_request_object, opts)

Returns billing codes for required parameters

### Examples

```ruby
require 'time'
require 'smrf_client'
# setup authorization
SmrfClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SmrfClient::BillingCodeApi.new
rate_source_request_object = SmrfClient::RateSourceRequestObject.new # RateSourceRequestObject | 
opts = {
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  # Returns billing codes for required parameters
  result = api_instance.billing_codes_search_post(rate_source_request_object, opts)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling BillingCodeApi->billing_codes_search_post: #{e}"
end
```

#### Using the billing_codes_search_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillingCodeAndType>>, Integer, Hash)> billing_codes_search_post_with_http_info(rate_source_request_object, opts)

```ruby
begin
  # Returns billing codes for required parameters
  data, status_code, headers = api_instance.billing_codes_search_post_with_http_info(rate_source_request_object, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillingCodeAndType>>
rescue SmrfClient::ApiError => e
  puts "Error when calling BillingCodeApi->billing_codes_search_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_source_request_object** | [**RateSourceRequestObject**](RateSourceRequestObject.md) |  |  |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |

### Return type

[**Array&lt;BillingCodeAndType&gt;**](BillingCodeAndType.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

