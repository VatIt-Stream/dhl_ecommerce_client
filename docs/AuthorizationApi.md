# DhlEcommerceClient::AuthorizationApi

All URIs are relative to *https://api-sandbox.dhlecommerce.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_v1_auth_accesstoken_get**](AuthorizationApi.md#account_v1_auth_accesstoken_get) | **GET** /account/v1/auth/accesstoken | Get Access Token


# **account_v1_auth_accesstoken_get**
> GetAccessTokenresponse account_v1_auth_accesstoken_get(accept)

Get Access Token

The Get Access Token API call provides an OAuth 2.0 Bearer token with authorization scope, assigned to your client id, which will grant you access to the Global DHL eCommerce APIs. More details about it can be foud <a href=\"/api-reference/duty-and-tax-calculator#get-started-section/user-guide%authorization\">here</a>

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::AuthorizationApi.new

accept = 'accept_example' # String |


begin
  #Get Access Token
  result = api_instance.account_v1_auth_accesstoken_get(accept)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling AuthorizationApi->account_v1_auth_accesstoken_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  |

### Return type

[**GetAccessTokenresponse**](GetAccessTokenresponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



