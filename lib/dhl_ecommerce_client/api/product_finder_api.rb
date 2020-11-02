=begin
#DHL eCommerce Solutions Americas API

### `VERSION 4.0` ![Alt](https://www.dhl.com/img/meta/dhl_logo.gif \"DHL eCommerce logo\")    Last updated: 04-AUG-2020       #### This site is a complete reference for DHL eCommerce Solutions Americas (Version 4) API, and also includes a free, ready-to-use Postman collection to get started quickly.  > The simplified overview for these APIs is located in our group-wide Developer Portal located [here](https://developer.dhl.com/api-reference/dhl-ecommerce-solutions-americas#get-started-section/get-started).   ***    ## Overview The **DHL ECOMMERCE SOLUTIONS AMERICAS API** is your one stop solution to get shipping products, calculating duty and tax, generating shipping labels, manifesting packages, requesting shipment pickup, tracking packages and generating return labels.     ![Overview image](https://i.ibb.co/4PNNzF3/Overviewupload3.png \"Overview\")      ***    #### The API can be used for:   * Only DHLeC packages originating within United States and Canada * Domestic and international packages * All DHL eCommerce Solutions Americas shipping products  This documentation provides detailed information about the API structure and its use. You can also go directly to the following topics:  * [Product Finder API](https://api.dhlecs.com/docs/products)  * [Duty and Tax Calculator (DTC) API](https://api.dhlecs.com/docs/dtc)  * [Label API](https://api.dhlecs.com/docs/label)  * [Manifest API](https://api.dhlecs.com/docs/manifest)  * [Tracking API](https://api.dhlecs.com/docs/tracking)   * [Transportation API](https://api.dhlecs.com/docs/transportation)  * [API References](https://api.dhlecs.com/docs/references)  * [API Error Reference](https://api.dhlecs.com/docs/errors)  Also, information about each error code can be directly referenced by appending the error code to the following URL. For example -    `https://api.dhlecs.com/docs/errors/400.0204003`     The same error URLs are also returned in the APIs when there is an error response. This allows clients to quickly get detailed information on each type of error.    ***  #### Using the API The API has been designed for use by developers. You will need basic knowledge of REST APIs, JSON and HTTPS. Also, your organization must to have a customer account with DHL eCommerce Solutions Americas.  ***  #### Example Use Cases Simply Integrate in your existing website / solution  Easy integration into any eCommerce platform such as your Order Management System, Transportation Management System or an eCommerce website.  Merchants can use the API to get access to DHL Ecommerce Americas portfolio solution  Third Party Vendors (3PVs) and shipping aggregators can use the API to provide their customers with access to DHL ECommerce shipping solutions.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module DhlEcommerceClient
  class ProductFinderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find Products and Rates
    # @param content_type
    # @param body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization  (default to Bearer {token})
    # @return [ProductFinderProductinformationwithoutRatesandEDD]
    def find_productsand_rates(content_type, body, opts = {})
      data, _status_code, _headers = find_productsand_rates_with_http_info(content_type, body, opts)
      data
    end

    # Find Products and Rates
    # @param content_type
    # @param body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization
    # @return [Array<(ProductFinderProductinformationwithoutRatesandEDD, Fixnum, Hash)>] ProductFinderProductinformationwithoutRatesandEDD data, response status code and response headers
    def find_productsand_rates_with_http_info(content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductFinderApi.find_productsand_rates ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ProductFinderApi.find_productsand_rates"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ProductFinderApi.find_productsand_rates"
      end
      # resource path
      local_var_path = '/shipping/v4/products'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProductFinderProductinformationwithoutRatesandEDD')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductFinderApi#find_productsand_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
