# SmrfClient::PlaceOfServiceApi

All URIs are relative to *https://hci-test.pa.services.mdxdata.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**places_of_service_get**](PlaceOfServiceApi.md#places_of_service_get) | **GET** /places_of_service | Returns all places of service |


## places_of_service_get

> <Array<PlaceOfService>> places_of_service_get(opts)

Returns all places of service

### Examples

```ruby
require 'time'
require 'smrf_client'
# setup authorization
SmrfClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SmrfClient::PlaceOfServiceApi.new
opts = {
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  # Returns all places of service
  result = api_instance.places_of_service_get(opts)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling PlaceOfServiceApi->places_of_service_get: #{e}"
end
```

#### Using the places_of_service_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PlaceOfService>>, Integer, Hash)> places_of_service_get_with_http_info(opts)

```ruby
begin
  # Returns all places of service
  data, status_code, headers = api_instance.places_of_service_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PlaceOfService>>
rescue SmrfClient::ApiError => e
  puts "Error when calling PlaceOfServiceApi->places_of_service_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |

### Return type

[**Array&lt;PlaceOfService&gt;**](PlaceOfService.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

