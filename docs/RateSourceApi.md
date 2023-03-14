# SmrfClient::RateSourceApi

All URIs are relative to *https://hci-test.pa.services.mdxdata.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**rate_sources_get**](RateSourceApi.md#rate_sources_get) | **GET** /rate_sources | Returns all rate sources |


## rate_sources_get

> <Array<RateSource>> rate_sources_get(opts)

Returns all rate sources

### Examples

```ruby
require 'time'
require 'smrf_client'
# setup authorization
SmrfClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SmrfClient::RateSourceApi.new
opts = {
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  # Returns all rate sources
  result = api_instance.rate_sources_get(opts)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling RateSourceApi->rate_sources_get: #{e}"
end
```

#### Using the rate_sources_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RateSource>>, Integer, Hash)> rate_sources_get_with_http_info(opts)

```ruby
begin
  # Returns all rate sources
  data, status_code, headers = api_instance.rate_sources_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RateSource>>
rescue SmrfClient::ApiError => e
  puts "Error when calling RateSourceApi->rate_sources_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |

### Return type

[**Array&lt;RateSource&gt;**](RateSource.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

