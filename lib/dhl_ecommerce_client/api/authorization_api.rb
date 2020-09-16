=begin
#DHL eCommerce's Duty and Tax Calculator

#DHL eCommerce’s Duty and Tax Calculator API calculates the total cost of a cross-border shipment. Fully Landed Costs are the total amount of costs of a cross border purchase including the price of the goods, shipping costs, customs duties, taxes, insurance, currency conversion, transaction fees, and any other service fees that might occur.  <strong><span style=\"color:#d40511;\">Note:</span></strong> The \"Try now!\" feature on this page is being finalized and will be available in the upcoming weeks. Nevertheless, The API is available and can be used by any client application (e.g. cURL, Postman, etc).

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'uri'

module DhlEcommerceClient
  class AuthorizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Access Token
    # The Get Access Token API call provides an OAuth 2.0 Bearer token with authorization scope, assigned to your client id, which will grant you access to the Global DHL eCommerce APIs. More details about it can be foud <a href=\"/api-reference/duty-and-tax-calculator#get-started-section/user-guide%authorization\">here</a>
    # @param accept
    # @param [Hash] opts the optional parameters
    # @return [GetAccessTokenresponse]
    def account_v1_auth_accesstoken_get(accept, opts = {})
      data, _status_code, _headers = account_v1_auth_accesstoken_get_with_http_info(accept, opts)
      data
    end

    # Get Access Token
    # The Get Access Token API call provides an OAuth 2.0 Bearer token with authorization scope, assigned to your client id, which will grant you access to the Global DHL eCommerce APIs. More details about it can be foud &lt;a href&#x3D;\&quot;/api-reference/duty-and-tax-calculator#get-started-section/user-guide%authorization\&quot;&gt;here&lt;/a&gt;
    # @param accept
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAccessTokenresponse, Fixnum, Hash)>] GetAccessTokenresponse data, response status code and response headers
    def account_v1_auth_accesstoken_get_with_http_info(accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorizationApi.account_v1_auth_accesstoken_get ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling AuthorizationApi.account_v1_auth_accesstoken_get"
      end
      # resource path
      local_var_path = '/account/v1/auth/accesstoken'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetAccessTokenresponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorizationApi#account_v1_auth_accesstoken_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
