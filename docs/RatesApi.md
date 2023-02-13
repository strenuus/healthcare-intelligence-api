# SmrfClient::RatesApi

All URIs are relative to *https://hci-qa.services.mdxdata.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**rates_post**](RatesApi.md#rates_post) | **POST** /rates | Returns rates |
| [**rates_unique_values_post**](RatesApi.md#rates_unique_values_post) | **POST** /rates/unique_values | Returns unique values for a field or combination of fields, applying filters if they exist |


## rates_post

> <Array<RatesResponse>> rates_post(rates_request, opts)

Returns rates

### Examples

```ruby
require 'time'
require 'smrf_client'
# setup authorization
SmrfClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SmrfClient::RatesApi.new
rates_request = SmrfClient::RatesRequest.new({rate_source: SmrfClient::RateSourceRequest.new, billing_code: SmrfClient::BillingCodeAndType.new}) # RatesRequest | 
opts = {
  accept_encoding: 'gzip' # String | 
}

begin
  # Returns rates
  result = api_instance.rates_post(rates_request, opts)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling RatesApi->rates_post: #{e}"
end
```

#### Using the rates_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RatesResponse>>, Integer, Hash)> rates_post_with_http_info(rates_request, opts)

```ruby
begin
  # Returns rates
  data, status_code, headers = api_instance.rates_post_with_http_info(rates_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RatesResponse>>
rescue SmrfClient::ApiError => e
  puts "Error when calling RatesApi->rates_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rates_request** | [**RatesRequest**](RatesRequest.md) |  |  |
| **accept_encoding** | **String** |  | [optional] |

### Return type

[**Array&lt;RatesResponse&gt;**](RatesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/jsonl, application/parquet, application/arrow


## rates_unique_values_post

> <RatesUniqueValuesPost200Response> rates_unique_values_post(rates_unique_values_post_request)

Returns unique values for a field or combination of fields, applying filters if they exist

### Examples

```ruby
require 'time'
require 'smrf_client'
# setup authorization
SmrfClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SmrfClient::RatesApi.new
rates_unique_values_post_request = SmrfClient::RatesUniqueValuesPostRequest.new({field: 'applicable_specialties', rate_source: SmrfClient::RateSourceRequest.new, billing_code: SmrfClient::BillingCodeAndType.new}) # RatesUniqueValuesPostRequest | 

begin
  # Returns unique values for a field or combination of fields, applying filters if they exist
  result = api_instance.rates_unique_values_post(rates_unique_values_post_request)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling RatesApi->rates_unique_values_post: #{e}"
end
```

#### Using the rates_unique_values_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RatesUniqueValuesPost200Response>, Integer, Hash)> rates_unique_values_post_with_http_info(rates_unique_values_post_request)

```ruby
begin
  # Returns unique values for a field or combination of fields, applying filters if they exist
  data, status_code, headers = api_instance.rates_unique_values_post_with_http_info(rates_unique_values_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RatesUniqueValuesPost200Response>
rescue SmrfClient::ApiError => e
  puts "Error when calling RatesApi->rates_unique_values_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rates_unique_values_post_request** | [**RatesUniqueValuesPostRequest**](RatesUniqueValuesPostRequest.md) |  |  |

### Return type

[**RatesUniqueValuesPost200Response**](RatesUniqueValuesPost200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

