# DhlEcommerceClient::ProductFinderApi

All URIs are relative to *https://api-sandbox.dhlecs.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_productsand_rates**](ProductFinderApi.md#find_productsand_rates) | **POST** /shipping/v4/products | Find Products and Rates


# **find_productsand_rates**
> ProductFinderProductinformationwithoutRatesandEDD find_productsand_rates(content_type, body, opts)

Find Products and Rates

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::ProductFinderApi.new

content_type = 'content_type_example' # String |

body = DhlEcommerceClient::FindProductsandRatesRequest.new # FindProductsandRatesRequest |

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Find Products and Rates
  result = api_instance.find_productsand_rates(content_type, body, opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling ProductFinderApi->find_productsand_rates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**|  |
 **body** | [**FindProductsandRatesRequest**](FindProductsandRatesRequest.md)|  |
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**ProductFinderProductinformationwithoutRatesandEDD**](ProductFinderProductinformationwithoutRatesandEDD.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



