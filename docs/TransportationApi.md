# DhlEcommerceClient::TransportationApi

All URIs are relative to *https://api-sandbox.dhlecs.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createa_transportation_pickuprequest**](TransportationApi.md#createa_transportation_pickuprequest) | **POST** /transportation/v4/pickups | Create a Transportation Pickup request
[**delete_transportation_pickuprequest**](TransportationApi.md#delete_transportation_pickuprequest) | **DELETE** /transportation/v4/pickups/SH532003700415193613024 | Delete Transportation Pickup request
[**get_transportation_pickuprequest**](TransportationApi.md#get_transportation_pickuprequest) | **GET** /transportation/v4/pickups/SH532003700415193613024 | Get Transportation Pickup request


# **createa_transportation_pickuprequest**
> CreateaTransportationPickuprequestGoodresponse createa_transportation_pickuprequest(content_type, body, opts)

Create a Transportation Pickup request

*** ## Use this API to POST a single pickup request for any US Domestic or International Product.  > Here`s the minimum information you need to generate a pickup request-  * pickup Account * packaging Type * readyBy date and time * pickup Address  ### Request Description  > M- Mandatory O- Optional C- Conditional N- Not Applicable  | Node                      | Data Type     | Required  | Length    | Description                                                                                                                                                  | Example Values                              | |---------------------------|---------------|-----------|-----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------| | **`pickupAccount`**       | string        | M         | 1:30      | DHLeCS Pickup account number.                                                                                                                                | 5321234                                     | | **`merchantId`**          | string        | O         | 1:30      | Secondary identification often provided by marketplace.                                                                                                      | 123                                         | | **`packagingType`**       | string        | O         | 1:20      | Specify the type of container used to consolidate your packages (acceptable values include: \"SACK\", \"GAYLORD\", \"BOX\").                                       | SACK                                        | | **`value`**               | float         | C         | 0:999999  | Total value of the packages shipped. Required if currency is provided.                                                                                       | 4500                                        | | **`currency`**            | string        | C         | 3         | Three-letter ISO Currency code. Required if value is provided.                                                                                               | USD                                         | | **`shipmentWeight`**      | float         | C         | 1:9999.99 | Total weight of all packages. Required if weightUom is provided.                                                                                             | 350                                         | | **`weightUom`**           | string enum   | C         | 1:10      | Weight unit of measure (G, KG, OZ, LB). Required if shipmentWeight provided.                                                                                 | LB                                          | | **`shipmentCount`**       | integer       | O         | 1:99      | Total number of containers in a shipment.                                                                                                                    | 1                                           | | **`containerCount`**      | integer       | O         | 1:99      | Sum of containers.                                                                                                                                           | 10                                          | | **`packageCount`**        | integer       | O         | 1:99      | Sum of packages in each container.                                                                                                                           | 300                                         | | **`readyBy`**             | string        | M         | 1:50      | If orders are prepared in advance, this field will denote the expected completion and available time when the items will be ready for pickup. Should be in ISO-8601 date/time format.  | 2020-07-28T18:37:13.087Z    | | **`specialInstructions`** | string        | O         | 1:255     | Pickup instructions given by consumer.                                                                                                                       | Your instructions, if any, cannot guarantee | | **`pickupAddress`**       | object        | O         |           | Pickup address object.                                                                                                                                       |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`companyName`         | string    | O         | 1:30     | Pickup company name.                                                                                                  | MyStuff Inc                                 | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`name`                | string    | M         | 1:50     | Name.                                                                                                                 | John Doe                                    | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address1`            | string    | M         | 1:60     | The pickup address where the shipment will be picked up for delivery.                                                 | 5923 Peachtree Industrial Blvd              | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address2`            | string    | O         | 1:60     | The pickup address where the shipment will be picked up for delivery.                                                 |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address3`            | string    | O         | 1:60     | The pickup address where the shipment will be picked up for delivery.                                                 |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`city`                | string    | M         | 1:40     | The pickup city where the shipment will be picked up for delivery.                                                    | Norcross                                    | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`state`               | string    | M         | 2        | The pickup state where the shipment will be picked up for delivery.                                                   | GA                                          | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`postalCode`          | string    | M         | 3:10     | The pickup postal code where the shipment will be picked up for delivery.                                             | 30092                                       | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`country`             | string    | M         | 2        | The pickup country where the shipment will be picked up for delivery.                                                 | USD                                         | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`phone`               | string    | O         | 1:20     | The pickup contact number should there be any need to discuss pickup logistics.                                       | 6787563000                                  | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`email`               | string    | O         | 1:80     | Return contact email address.                                                                                         | john.doe@email.com                          |  ### Response Description  > M- Mandatory O- Optional C- Conditional N- Not Applicable  | Node                      | Data Type     | Required  | Length     | Description                                                                                                                             | Example Values                              | |---------------------------|---------------|-----------|------------|-----------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------| | **`shipmentIdentifier`**  | string        | C         | 20:50      | Generated by DHLeCS, present always and only in valid 200 responses.                                                                    | SH532003700415180036020                     | | **`pickupAccount`**       | string        | M         | 1:30       | DHLeCS eCommerce Pickup account number.                                                                                                 | 5323000                                     | | **`pickupTimeBegin`**     | string        | M         | 1:50       | Generated by DHLeCS, present always and only in responses; ISO-8601 date/time format.                                                   | 2020-07-28T18:00:00.087Z                    | | **`pickupTimeEnd`**       | string        | M         | 1:50       | Generated by DHLeCS, present always and only in responses; ISO-8601 date/time format.                                                   | 2020-07-28T20:00:00.087Z                    | | **`readyBy`**             | string        | M         | 1:50       | If orders are prepared in advance, this field will denote the expected completion and available time when the items will be ready for pickup; ISO-8601 date/time format. | 2020-07-28T18:37:13.087Z    | | **`merchantId`**          | string        | O         | 1:30       | Secondary identification often provided by marketplace.                                                                                 | 123                                         | | **`packagingType`**       | string        | O         | 1:20       | Specify the type of container used to consolidate your packages (acceptable values include: \"SACK\", \"GAYLORD\", \"BOX\").                  | SACK                                        | | **`containerCount`**      | integer       | O         | 1:99       | Sum of containers.                                                                                                                      | 10                                          | | **`shipmentCount`**       | integer       | O         | 1:99       | Total number of containers in a shipment.                                                                                               | 1                                           | | **`packageCount`**        | integer       | O         | 1:99       | Sum of packages in each container.                                                                                                      | 30                                          | | **`value`**               | float         | C         | 0:999999   | Total value of the items shipped. Required if currency is provided.                                                                     | 4500                                        | | **`currency`**            | string        | C         | 3          | Three-letter ISO Currency code. Required if value is provided.                                                                          | USD                                         | | **`shipmentWeight`**      | float         | C         | 1:9999.99  | Total weight of all packages. Required if weightUom is provided.                                                                        | 350                                         | | **`weightUom`**           | string enum   | C         | 1:10       | Weight unit of measure (G, KG, OZ, LB). Required if shipmentWeight provided.                                                            | LB                                          | | **`specialInstructions`** | string        | O         | 1:255      | Pickup instructions given by consumer.                                                                                                  | Your instructions, if any, cannot guarantee | | **`pickupAddress`**       | object        | M         |            | Pickup address object.                                                                                                                  |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`companyName`         | string    | O         | 1:30     | Pickup company name.                                                                              | MyStuff Inc                                 | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`name`                | string    | M         | 1:50     | Name of the shipper.                                                                            | John Doe                                    | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address1`            | string    | M         | 1:60     | The pickup address where the shipment will be picked up for delivery.                           | 5923 Peachtree Industrial Blvd              | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address2`            | string    | O         | 1:60     | The pickup address where the shipment will be picked up for delivery.                           |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address3`            | string    | O         | 1:60     | The pickup address where the shipment will be picked up for delivery.                           |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`city`                | string    | M         | 1:40     | The pickup city where the shipment will be picked up for delivery.                              | Norcross                                    | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`state`               | string    | M         | 2        | The pickup state where the shipment will be picked up for delivery.                             | GA                                          | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`postalCode`          | string    | M         | 3:10     | The pickup postal code where the shipment will be picked up for delivery.                       | 30092                                       | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`country`             | string    | M         | 2        | The pickup country where the shipment will be picked up for delivery.                           | USD                                         | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`phone`               | string    | O         | 1:20     | The pickup contact number should there be any need to discuss pickup logistics.                 | 6787563000                                  | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`email`               | string    | O         | 1:80     | Return contact email address.                                                                   | john.doe@email.com                          |

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::TransportationApi.new

content_type = 'content_type_example' # String |

body = DhlEcommerceClient::CreateaTransportationPickuprequestRequest.new # CreateaTransportationPickuprequestRequest |

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Create a Transportation Pickup request
  result = api_instance.createa_transportation_pickuprequest(content_type, body, opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling TransportationApi->createa_transportation_pickuprequest: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**|  |
 **body** | [**CreateaTransportationPickuprequestRequest**](CreateaTransportationPickuprequestRequest.md)|  |
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**CreateaTransportationPickuprequestGoodresponse**](CreateaTransportationPickuprequestGoodresponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_transportation_pickuprequest**
> Object delete_transportation_pickuprequest(opts)

Delete Transportation Pickup request

*** ## Use this API to DELETE a single pickup request for any US Domestic or International Product.  > Here's the minimum information you need to delete a pickup request-  * shipmentIdentifier  ### Request Description  HTTP Method: DELETE URL path: /transportation/v4/pickups/<shipmentIdentifier> This HTTP method has no request body.  ### Response Description  A response code of 200 indicates the DELETE request has been completed. This HTTP method has no response body.

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::TransportationApi.new

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Delete Transportation Pickup request
  result = api_instance.delete_transportation_pickuprequest(opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling TransportationApi->delete_transportation_pickuprequest: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transportation_pickuprequest**
> GetTransportationPickuprequestGoodresponse get_transportation_pickuprequest(opts)

Get Transportation Pickup request

*** ## Use this API to GET a single pickup request for any US Domestic or International Product.  > Here's the minimum information you need to generate a pickup request-  * shipmentIdentifier ### Request Description  HTTP Method: GET URL path: /transportation/v4/pickups/<shipmentIdentifier> This HTTP method has no request body.  ### Response Description  > M- Mandatory O- Optional C- Conditional N- Not Applicable  | Node                       | Data Type | Required? | Length     | Description                                                                                                                                  | Example Values                              | |-------------------------------|-----------|-----------|------------|----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------| | **`shipmentIdentifier`**      | string    | C         | 20:50       | Generated by DHL, present always and only in valid 200 responses                                                                             | SH532003700415180036020                     | | **`pickupAccount`**           | string    | M         | 1:30        | DHL eCommerce Pickup account number                                                                                                          | 5323000                                     | | **`pickupTimeBegin`**         | string    | M         | 1:50        | Generated by DHL, present always and only in responses; ISO-8601 date/time format                                                            | 2020-04-16T19:00:00.000Z                    | | **`pickupTimeEnd`**           | string    | M         | 1:50        | Generated by DHL, present always and only in responses; ISO-8601 date/time format                                                            | 2020-04-16T22:00:00.000Z                    | | **`readyBy`**                 | string    | M         | 1:50        | If orders are prepared in advance, this field will denote the expected completion and available time when the items will be ready for pickup | 15-04-2020 02:00                            | | **`merchantId`**              | string    | O         | 0:30        | Secondary identification often provided by marketplace                                                                                       | 123                                         | | **`packagingType`**           | string    | M         | 1:20        | Specify the type of container used to consolidate your packages (acceptable values include: \"SACK\", \"GAYLORD\", \"BOX\")                        | SACK                                        | | **`shipmentCount`**           | integer   | O         | 0:99        | Total number of containers in a shipment                                                                                                     | 1                                           | | **`packageCount`**            | integer   | O         | 0:99        | Sum of packages in each container                                                                                                            | 30                                          | | **`value`**                   | float     | C         | 1:999999    | Total value of the items shipped. Required if currency is provided                                                                           | 4500                                        | | **`currency`**                | string    | C         | 3           | Three-letter ISO Currency code. Required if value is provided                                                                                | USD                                         | | **`shipmentWeight`**          | float     | C         | 1:9999.99   | Total weight of all items. Required if weightUom is provided                                                                                 | 350                                         | | **`weightUom`**               | string    | C         | 1:10        | Weight unit of measure (G, KG, OZ, LB). Required if shipmentWeight provided.                                                                 | LB                                          | | **`specialInstructions`**     | string    | O         | 0:255       | Pickup instructions given by consumer.                                                                                                       | Your instructions, if any, cannot guarantee | | **`pickupAddress`**           | object    | M         |             | Pickup address object.                                                                                                            |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`companyName`          | string    | O         | 0:30     | Pickup company name                                                                                                               | MyStuff Inc                                 | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`name`                 | string    | M         | 1:50     | Name of the shipper                                                                                                                          | John Doe                                    | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address1`             | string    | M         | 1:60     | The pickup address where the shipment will be picked up for delivery                                                                         | 5923 Peachtree Industrial Blvd              | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address2`             | string    | O         | 0:60     | The pickup address where the shipment will be picked up for delivery                                                                         |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`address3`             | string    | O         | 0:60     | The pickup address where the shipment will be picked up for delivery                                                                         |                                             | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`city`                 | string    | M         | 1:40     | The pickup city where the shipment will be picked up for delivery                                                                            | Norcross                                    | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`state`                | string    | M         | 2        | The pickup state where the shipment will be picked up for delivery                                                                           | GA                                          | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`postalCode`           | string    | M         | 1:10     | The pickup postal code where the shipment will be picked up for delivery                                                                     | 30092                                       | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`country`              | string    | M         | 2        | The pickup country where the shipment will be picked up for delivery                                                                         | USD                                         | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`phone`                | string    | O         | 0:20     | The pickup contact number should there for any need to discuss pickup logistics                                                              | 6787563000                                  | | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`email`                | string    | O         | 0:80     | Return contact email address                                                                                                                 | john.doe@email.com                          |

### Example
```ruby
# load the gem
require 'dhl_ecommerce_client'

api_instance = DhlEcommerceClient::TransportationApi.new

opts = {
  authorization: 'Bearer {token}' # String |
}

begin
  #Get Transportation Pickup request
  result = api_instance.get_transportation_pickuprequest(opts)
  p result
rescue DhlEcommerceClient::ApiError => e
  puts "Exception when calling TransportationApi->get_transportation_pickuprequest: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**GetTransportationPickuprequestGoodresponse**](GetTransportationPickuprequestGoodresponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



