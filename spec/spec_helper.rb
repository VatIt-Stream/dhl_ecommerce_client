=begin
#DHL eCommerce Solutions Americas API

### `VERSION 4.0` ![Alt](https://www.dhl.com/img/meta/dhl_logo.gif \"DHL eCommerce logo\")    Last updated: 04-AUG-2020       #### This site is a complete reference for DHL eCommerce Solutions Americas (Version 4) API, and also includes a free, ready-to-use Postman collection to get started quickly.  > The simplified overview for these APIs is located in our group-wide Developer Portal located [here](https://developer.dhl.com/api-reference/dhl-ecommerce-solutions-americas#get-started-section/get-started).   ***    ## Overview The **DHL ECOMMERCE SOLUTIONS AMERICAS API** is your one stop solution to get shipping products, calculating duty and tax, generating shipping labels, manifesting packages, requesting shipment pickup, tracking packages and generating return labels.     ![Overview image](https://i.ibb.co/4PNNzF3/Overviewupload3.png \"Overview\")      ***    #### The API can be used for:   * Only DHLeC packages originating within United States and Canada * Domestic and international packages * All DHL eCommerce Solutions Americas shipping products  This documentation provides detailed information about the API structure and its use. You can also go directly to the following topics:  * [Product Finder API](https://api.dhlecs.com/docs/products)  * [Duty and Tax Calculator (DTC) API](https://api.dhlecs.com/docs/dtc)  * [Label API](https://api.dhlecs.com/docs/label)  * [Manifest API](https://api.dhlecs.com/docs/manifest)  * [Tracking API](https://api.dhlecs.com/docs/tracking)   * [Transportation API](https://api.dhlecs.com/docs/transportation)  * [API References](https://api.dhlecs.com/docs/references)  * [API Error Reference](https://api.dhlecs.com/docs/errors)  Also, information about each error code can be directly referenced by appending the error code to the following URL. For example -    `https://api.dhlecs.com/docs/errors/400.0204003`     The same error URLs are also returned in the APIs when there is an error response. This allows clients to quickly get detailed information on each type of error.    ***  #### Using the API The API has been designed for use by developers. You will need basic knowledge of REST APIs, JSON and HTTPS. Also, your organization must to have a customer account with DHL eCommerce Solutions Americas.  ***  #### Example Use Cases Simply Integrate in your existing website / solution  Easy integration into any eCommerce platform such as your Order Management System, Transportation Management System or an eCommerce website.  Merchants can use the API to get access to DHL Ecommerce Americas portfolio solution  Third Party Vendors (3PVs) and shipping aggregators can use the API to provide their customers with access to DHL ECommerce shipping solutions.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

# load the gem
require 'dhl_ecommerce_client'

# The following  was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# The `.rspec` file also contains a few flags that are not defaults but that
# users commonly want.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

# The settings below are suggested to provide a good initial experience
# with RSpec, but feel free to customize to your heart's content.
=begin
  # These two settings work together to allow you to limit a spec run
  # to individual examples or groups you care about by tagging them with
  # `:focus` metadata. When nothing is tagged with `:focus`, all examples
  # get run.
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  # Allows RSpec to persist some state between runs in order to support
  # the `--only-failures` and `--next-failure` CLI options. We recommend
  # you configure your source control system to ignore this file.
  config.example_status_persistence_file_path = "spec/examples.txt"

  # Limits the available syntax to the non-monkey patched syntax that is
  # recommended. For more details, see:
  #   - http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/
  #   - http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/
  #   - http://rspec.info/blog/2014/05/notable-changes-in-rspec-3/#zero-monkey-patching-mode
  config.disable_monkey_patching!

  # This setting enables warnings. It's recommended, but in some cases may
  # be too noisy due to issues in dependencies.
  config.warnings = true

  # Many RSpec users commonly either run the entire suite or an individual
  # file, and it's useful to allow more verbose output when running an
  # individual spec file.
  if config.files_to_run.one?
    # Use the documentation formatter for detailed output,
    # unless a formatter has already been configured
    # (e.g. via a command-line flag).
    config.default_formatter = 'doc'
  end

  # Print the 10 slowest examples and example groups at the
  # end of the spec run, to help surface which specs are running
  # particularly slow.
  config.profile_examples = 10

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option.
  # Setting this allows you to use `--seed` to deterministically reproduce
  # test failures related to randomization by passing the same `--seed` value
  # as the one that triggered the failure.
  Kernel.srand config.seed
=end
end
