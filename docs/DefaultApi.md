# SmrfClient::DefaultApi

All URIs are relative to *https://hci-qa.services.mdxdata.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ping_get**](DefaultApi.md#ping_get) | **GET** /ping |  |


## ping_get

> ping_get



heartbeat

### Examples

```ruby
require 'time'
require 'smrf_client'
# setup authorization
SmrfClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SmrfClient::DefaultApi.new

begin
  
  api_instance.ping_get
rescue SmrfClient::ApiError => e
  puts "Error when calling DefaultApi->ping_get: #{e}"
end
```

#### Using the ping_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ping_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.ping_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SmrfClient::ApiError => e
  puts "Error when calling DefaultApi->ping_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

