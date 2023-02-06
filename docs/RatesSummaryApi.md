# SmrfClient::RatesSummaryApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**summary_post**](RatesSummaryApi.md#summary_post) | **POST** /summary | Returns summary metrics |


## summary_post

> <SummaryPost200Response> summary_post(summary_request_body, opts)

Returns summary metrics

### Examples

```ruby
require 'time'
require 'smrf_client'

api_instance = SmrfClient::RatesSummaryApi.new
summary_request_body = SmrfClient::SummaryRequestBody.new({rate_source: SmrfClient::RateSourceRequest.new, billing_code: SmrfClient::BillingCodeAndType.new}) # SummaryRequestBody | 
opts = {
  accept_encoding: 'gzip' # String | 
}

begin
  # Returns summary metrics
  result = api_instance.summary_post(summary_request_body, opts)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling RatesSummaryApi->summary_post: #{e}"
end
```

#### Using the summary_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SummaryPost200Response>, Integer, Hash)> summary_post_with_http_info(summary_request_body, opts)

```ruby
begin
  # Returns summary metrics
  data, status_code, headers = api_instance.summary_post_with_http_info(summary_request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SummaryPost200Response>
rescue SmrfClient::ApiError => e
  puts "Error when calling RatesSummaryApi->summary_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary_request_body** | [**SummaryRequestBody**](SummaryRequestBody.md) |  |  |
| **accept_encoding** | **String** |  | [optional] |

### Return type

[**SummaryPost200Response**](SummaryPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/jsonl, application/parquet, application/arrow

