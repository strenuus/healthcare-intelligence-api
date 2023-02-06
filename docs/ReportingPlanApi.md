# SmrfClient::ReportingPlanApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**rate_sources_rate_source_id_reporting_plans_get**](ReportingPlanApi.md#rate_sources_rate_source_id_reporting_plans_get) | **GET** /rate_sources/{rate_source_id}/reporting_plans | Returns all reporting plans for rate source |


## rate_sources_rate_source_id_reporting_plans_get

> <Array<ReportingPlan>> rate_sources_rate_source_id_reporting_plans_get(rate_source_id)

Returns all reporting plans for rate source

### Examples

```ruby
require 'time'
require 'smrf_client'

api_instance = SmrfClient::ReportingPlanApi.new
rate_source_id = 789 # Integer | ID of rate source that needs to be fetched

begin
  # Returns all reporting plans for rate source
  result = api_instance.rate_sources_rate_source_id_reporting_plans_get(rate_source_id)
  p result
rescue SmrfClient::ApiError => e
  puts "Error when calling ReportingPlanApi->rate_sources_rate_source_id_reporting_plans_get: #{e}"
end
```

#### Using the rate_sources_rate_source_id_reporting_plans_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ReportingPlan>>, Integer, Hash)> rate_sources_rate_source_id_reporting_plans_get_with_http_info(rate_source_id)

```ruby
begin
  # Returns all reporting plans for rate source
  data, status_code, headers = api_instance.rate_sources_rate_source_id_reporting_plans_get_with_http_info(rate_source_id)
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

### Return type

[**Array&lt;ReportingPlan&gt;**](ReportingPlan.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

