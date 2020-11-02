# DhlEcommerceClient::DutyTaxCalculatorApi

All URIs are relative to *https://api-sandbox.dhlecs.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**request_quote**](DutyTaxCalculatorApi.md#request_quote) | **POST** /dtc/v4/quotes | Request Quote


# **request_quote**
> RequestQuote200 request_quote(content_type, body, opts)

Request Quote

200

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::DutyTaxCalculatorApi.new

content_type = 'content_type_example' # String |

body = DhlEcommerceClient::RequestQuoteRequest.new # RequestQuoteRequest |

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Request Quote
  result = api_instance.request_quote(content_type, body, opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling DutyTaxCalculatorApi->request_quote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**|  |
 **body** | [**RequestQuoteRequest**](RequestQuoteRequest.md)|  |
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**RequestQuote200**](RequestQuote200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



