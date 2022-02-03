# DhlEcommerceClient::AuthApi

All URIs are relative to *https://api.dhl.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**request_access_token**](AuthApi.md#request_access_token) | **POST** /auth/v4/accesstoken | Request an Access Token


# **request_access_token**
> RequestAccessTokenSuccessful request_access_token(content_type, grant_type, client_id, client_secret)

Request an Access Token

Use OAuth2.0 to submit clientId and clientSecret to obtain an access token for a specific grant type

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::AuthApi.new

content_type = 'content_type_example' # String |

grant_type = 'grant_type_example' # String |

client_id = 'client_id_example' # String |

client_secret = 'client_secret_example' # String |


begin
  #Request an Access Token
  result = api_instance.request_access_token(content_type, grant_type, client_id, client_secret)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling AuthApi->request_access_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**|  |
 **grant_type** | **String**|  |
 **client_id** | **String**|  |
 **client_secret** | **String**|  |

### Return type

[**RequestAccessTokenSuccessful**](RequestAccessTokenSuccessful.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



