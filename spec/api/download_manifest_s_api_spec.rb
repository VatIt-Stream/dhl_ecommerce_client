=begin
#DHL eCommerce Solutions Americas API

### `VERSION 4.0` ![Alt](https://www.dhl.com/img/meta/dhl_logo.gif \"DHL eCommerce logo\")    Last updated: 04-AUG-2020       #### This site is a complete reference for DHL eCommerce Solutions Americas (Version 4) API, and also includes a free, ready-to-use Postman collection to get started quickly.  > The simplified overview for these APIs is located in our group-wide Developer Portal located [here](https://developer.dhl.com/api-reference/dhl-ecommerce-solutions-americas#get-started-section/get-started).   ***    ## Overview The **DHL ECOMMERCE SOLUTIONS AMERICAS API** is your one stop solution to get shipping products, calculating duty and tax, generating shipping labels, manifesting packages, requesting shipment pickup, tracking packages and generating return labels.     ![Overview image](https://i.ibb.co/4PNNzF3/Overviewupload3.png \"Overview\")      ***    #### The API can be used for:   * Only DHLeC packages originating within United States and Canada * Domestic and international packages * All DHL eCommerce Solutions Americas shipping products  This documentation provides detailed information about the API structure and its use. You can also go directly to the following topics:  * [Product Finder API](https://api.dhlecs.com/docs/products)  * [Duty and Tax Calculator (DTC) API](https://api.dhlecs.com/docs/dtc)  * [Label API](https://api.dhlecs.com/docs/label)  * [Manifest API](https://api.dhlecs.com/docs/manifest)  * [Tracking API](https://api.dhlecs.com/docs/tracking)   * [Transportation API](https://api.dhlecs.com/docs/transportation)  * [API References](https://api.dhlecs.com/docs/references)  * [API Error Reference](https://api.dhlecs.com/docs/errors)  Also, information about each error code can be directly referenced by appending the error code to the following URL. For example -    `https://api.dhlecs.com/docs/errors/400.0204003`     The same error URLs are also returned in the APIs when there is an error response. This allows clients to quickly get detailed information on each type of error.    ***  #### Using the API The API has been designed for use by developers. You will need basic knowledge of REST APIs, JSON and HTTPS. Also, your organization must to have a customer account with DHL eCommerce Solutions Americas.  ***  #### Example Use Cases Simply Integrate in your existing website / solution  Easy integration into any eCommerce platform such as your Order Management System, Transportation Management System or an eCommerce website.  Merchants can use the API to get access to DHL Ecommerce Americas portfolio solution  Third Party Vendors (3PVs) and shipping aggregators can use the API to provide their customers with access to DHL ECommerce shipping solutions.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'

# Unit tests for DhlEcommerceClient::DownloadManifestSApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DownloadManifestSApi' do
  before do
    # run before each test
    @instance = DhlEcommerceClient::DownloadManifestSApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DownloadManifestSApi' do
    it 'should create an instance of DownloadManifestSApi' do
      expect(@instance).to be_instance_of(DhlEcommerceClient::DownloadManifestSApi)
    end
  end

  # unit tests for manifest_s
  # Manifest(s)
  # #### Use this request to download the manifest for a request that was submitted previously. &gt; Here&#39;s the identifier used to retrieve a manifest  * &#x60;requestId&#x60;  The error object in the manifestSummary can have the following errors- ~~~~ 001  Package not found 002  Package already manifested 003  Internal package manifest error 004 Internal System error &gt;&gt; this means the background process failed while trying to add and manifest a package with downstream systems. The package may or may not have been manifested in the downstream system. ~~~~
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization
  # @return [GetmanifestsCOMPLETEDStatus]
  describe 'manifest_s test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
