# DhlEcommerceClient::CreateManifestSApi

All URIs are relative to *https://api.dhl.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**request_manifest_sforspecificpackages**](CreateManifestSApi.md#request_manifest_sforspecificpackages) | **POST** /shipping/v4/manifest | Request Manifest(s) for specific packages


# **request_manifest_sforspecificpackages**
> RequestaManifestforspecificpackages request_manifest_sforspecificpackages(content_type, body, opts)

Request Manifest(s) for specific packages

*** #### Use this request to create a new manifest for specific packages. > Here's the package identifiers supported in the request  * `packageId` * `dhlPackageId`

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::CreateManifestSApi.new

content_type = 'content_type_example' # String |

body = DhlEcommerceClient::RequestManifestSforspecificpackagesRequest.new # RequestManifestSforspecificpackagesRequest |

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Request Manifest(s) for specific packages
  result = api_instance.request_manifest_sforspecificpackages(content_type, body, opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling CreateManifestSApi->request_manifest_sforspecificpackages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**|  |
 **body** | [**RequestManifestSforspecificpackagesRequest**](RequestManifestSforspecificpackagesRequest.md)|  |
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**RequestaManifestforspecificpackages**](RequestaManifestforspecificpackages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



