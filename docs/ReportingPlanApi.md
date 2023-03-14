# SmrfClient::ReportingPlanApi

All URIs are relative to *https://hci-test.pa.services.mdxdata.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**rate_sources_rate_source_id_reporting_plans_get**](ReportingPlanApi.md#rate_sources_rate_source_id_reporting_plans_get) | **GET** /rate_sources/{rate_source_id}/reporting_plans | Returns all reporting plans for rate source |


## rate_sources_rate_source_id_reporting_plans_get

> <Array<ReportingPlan>> rate_sources_rate_source_id_reporting_plans_get(rate_source_id, opts)

Returns all reporting plans for rate source

### Examples

```ruby
require 'time'
require 'smrf_client'
# setup authorization
SmrfClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SmrfClient::ReportingPlanApi.new
rate_source_id = 789 # Integer | ID of rate source that needs to be fetched
opts = {
  limit: 56, # Integer | 
  offset: 56 # Integer | 
}

begin
  # Returns all reporting plans for rate source
  result = api_instance.rate_sources_rate_source_id_reporting_plans_get(rate_source_id, opts)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling ReportingPlanApi->rate_sources_rate_source_id_reporting_plans_get: #{e}"
end
```

#### Using the rate_sources_rate_source_id_reporting_plans_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ReportingPlan>>, Integer, Hash)> rate_sources_rate_source_id_reporting_plans_get_with_http_info(rate_source_id, opts)

```ruby
begin
  # Returns all reporting plans for rate source
  data, status_code, headers = api_instance.rate_sources_rate_source_id_reporting_plans_get_with_http_info(rate_source_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ReportingPlan>>
rescue SmrfClient::ApiError => e
  puts "Error when calling ReportingPlanApi->rate_sources_rate_source_id_reporting_plans_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_source_id** | **Integer** | ID of rate source that needs to be fetched |  |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |

### Return type

[**Array&lt;ReportingPlan&gt;**](ReportingPlan.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

