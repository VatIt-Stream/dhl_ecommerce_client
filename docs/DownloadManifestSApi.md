# DhlEcommerceClient::DownloadManifestSApi

All URIs are relative to *https://api-sandbox.dhlecs.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**manifest_s**](DownloadManifestSApi.md#manifest_s) | **GET** /shipping/v4/manifest/5351244/9d339e8b-b746-4cf9-bc2a-609ed4603c20 | Manifest(s)


# **manifest_s**
> GetmanifestsCOMPLETEDStatus manifest_s(opts)

Manifest(s)

#### Use this request to download the manifest for a request that was submitted previously. > Here's the identifier used to retrieve a manifest  * `requestId`  The error object in the manifestSummary can have the following errors- ~~~~ 001  Package not found 002  Package already manifested 003  Internal package manifest error 004 Internal System error >> this means the background process failed while trying to add and manifest a package with downstream systems. The package may or may not have been manifested in the downstream system. ~~~~

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::DownloadManifestSApi.new

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Manifest(s)
  result = api_instance.manifest_s(opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling DownloadManifestSApi->manifest_s: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**GetmanifestsCOMPLETEDStatus**](GetmanifestsCOMPLETEDStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8



