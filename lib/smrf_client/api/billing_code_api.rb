=begin
#Payer Analytics - Healthcare Intelligence API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'cgi'

module SmrfClient
  class BillingCodeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns all billing codes
    # @param [Hash] opts the optional parameters
    # @return [Array<BillingCodesGet200ResponseInner>]
    def billing_codes_get(opts = {})
      data, _status_code, _headers = billing_codes_get_with_http_info(opts)
      data
    end

    # Returns all billing codes
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<BillingCodesGet200ResponseInner>, Integer, Hash)>] Array<BillingCodesGet200ResponseInner> data, response status code and response headers
    def billing_codes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingCodeApi.billing_codes_get ...'
      end
      # resource path
      local_var_path = '/billing_codes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<BillingCodesGet200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth']

      new_options = opts.merge(
        :operation => :"BillingCodeApi.billing_codes_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingCodeApi#billing_codes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns billing codes for required parameters
    # @param rate_source_request_object [RateSourceRequestObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<BillingCodeAndType>]
    def billing_codes_search_post(rate_source_request_object, opts = {})
      data, _status_code, _headers = billing_codes_search_post_with_http_info(rate_source_request_object, opts)
      data
    end

    # Returns billing codes for required parameters
    # @param rate_source_request_object [RateSourceRequestObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<BillingCodeAndType>, Integer, Hash)>] Array<BillingCodeAndType> data, response status code and response headers
    def billing_codes_search_post_with_http_info(rate_source_request_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingCodeApi.billing_codes_search_post ...'
      end
      # verify the required parameter 'rate_source_request_object' is set
      if @api_client.config.client_side_validation && rate_source_request_object.nil?
        fail ArgumentError, "Missing the required parameter 'rate_source_request_object' when calling BillingCodeApi.billing_codes_search_post"
      end
      # resource path
      local_var_path = '/billing_codes/search'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rate_source_request_object)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<BillingCodeAndType>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerAuth']

      new_options = opts.merge(
        :operation => :"BillingCodeApi.billing_codes_search_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingCodeApi#billing_codes_search_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
