# DhlEcommerceClient::TrackASinglePackageApi

All URIs are relative to *https://api-sandbox.dhlecs.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trackusingpackage_id**](TrackASinglePackageApi.md#trackusingpackage_id) | **GET** /tracking/v4/package | Track using packageId


# **trackusingpackage_id**
> TrackusingpackageId trackusingpackage_id(package_id, opts)

Track using packageId

Track using a single `packageId`

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::TrackASinglePackageApi.new

package_id = 'package_id_example' # String |

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Track using packageId
  result = api_instance.trackusingpackage_id(package_id, opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling TrackASinglePackageApi->trackusingpackage_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  |
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**TrackusingpackageId**](TrackusingpackageId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



