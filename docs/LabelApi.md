# DhlEcommerceClient::LabelApi

All URIs are relative to *https://api-sandbox.dhlecs.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_domestic_label**](LabelApi.md#create_domestic_label) | **POST** /shipping/v4/label | Create Domestic Label
[**getanexisting_label**](LabelApi.md#getanexisting_label) | **GET** /shipping/v4/label/5351244 | Get an existing Label


# **create_domestic_label**
> CreateDomesticLabel28Format3APNG29 create_domestic_label(format, content_type, body, opts)

Create Domestic Label

*** ## Use this request to create a single label for any US Domestic Product.  > Here's the minimum information you need to generate a US Domestic label -  * Your pickup Account number * Distribution Center * Ordered Product ID * Consignee Address * Return Address * Unique Package Id * Weight and Weight UOM of Package  ### Request Description

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::LabelApi.new

format = 'format_example' # String |

content_type = 'content_type_example' # String |

body = DhlEcommerceClient::CreateDomesticLabelRequest.new # CreateDomesticLabelRequest |

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Create Domestic Label
  result = api_instance.create_domestic_label(format, content_type, body, opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling LabelApi->create_domestic_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  |
 **content_type** | **String**|  |
 **body** | [**CreateDomesticLabelRequest**](CreateDomesticLabelRequest.md)|  |
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**CreateDomesticLabel28Format3APNG29**](CreateDomesticLabel28Format3APNG29.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getanexisting_label**
> GetanexistingLabelusingdhlPackageId getanexisting_label(package_id, opts)

Get an existing Label

*** ## Use this request to get an existing label that was generated in the last 7 days.  > You can get an existing label using one of the following package identifiers -  * `packageId` * `dhlPackageId`  The response is exactly the same as the Create Label response.  ### Request Description

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::LabelApi.new

package_id = 'package_id_example' # String |

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Get an existing Label
  result = api_instance.getanexisting_label(package_id, opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling LabelApi->getanexisting_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**|  |
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**GetanexistingLabelusingdhlPackageId**](GetanexistingLabelusingdhlPackageId.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



