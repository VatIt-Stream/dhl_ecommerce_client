=begin
#DHL eCommerce's Duty and Tax Calculator

#DHL eCommerce’s Duty and Tax Calculator API calculates the total cost of a cross-border shipment. Fully Landed Costs are the total amount of costs of a cross border purchase including the price of the goods, shipping costs, customs duties, taxes, insurance, currency conversion, transaction fees, and any other service fees that might occur.  <strong><span style=\"color:#d40511;\">Note:</span></strong> The \"Try now!\" feature on this page is being finalized and will be available in the upcoming weeks. Nevertheless, The API is available and can be used by any client application (e.g. cURL, Postman, etc).

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'date'

module DhlEcommerceClient
  class CustomsDetail
    attr_accessor :item_id

    attr_accessor :hs_code

    attr_accessor :sku_number

    attr_accessor :product_identifiers

    attr_accessor :product_category

    attr_accessor :item_short_description

    attr_accessor :item_description

    attr_accessor :size

    attr_accessor :gender

    attr_accessor :age_group

    attr_accessor :color

    attr_accessor :style

    attr_accessor :composition

    attr_accessor :condition

    attr_accessor :country_of_origin

    attr_accessor :qualifies_for_preferential_tariffs

    attr_accessor :item_quantity

    attr_accessor :item_value

    attr_accessor :item_freight

    attr_accessor :item_insurance

    attr_accessor :width

    attr_accessor :length

    attr_accessor :height

    attr_accessor :weight

    attr_accessor :volume

    attr_accessor :area

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'item_id' => :'itemId',
        :'hs_code' => :'hsCode',
        :'sku_number' => :'skuNumber',
        :'product_identifiers' => :'productIdentifiers',
        :'product_category' => :'productCategory',
        :'item_short_description' => :'itemShortDescription',
        :'item_description' => :'itemDescription',
        :'size' => :'size',
        :'gender' => :'gender',
        :'age_group' => :'ageGroup',
        :'color' => :'color',
        :'style' => :'style',
        :'composition' => :'composition',
        :'condition' => :'condition',
        :'country_of_origin' => :'countryOfOrigin',
        :'qualifies_for_preferential_tariffs' => :'qualifiesForPreferentialTariffs',
        :'item_quantity' => :'itemQuantity',
        :'item_value' => :'itemValue',
        :'item_freight' => :'itemFreight',
        :'item_insurance' => :'itemInsurance',
        :'width' => :'width',
        :'length' => :'length',
        :'height' => :'height',
        :'weight' => :'weight',
        :'volume' => :'volume',
        :'area' => :'area'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'item_id' => :'String',
        :'hs_code' => :'String',
        :'sku_number' => :'String',
        :'product_identifiers' => :'ProductIdentifiers',
        :'product_category' => :'String',
        :'item_short_description' => :'String',
        :'item_description' => :'String',
        :'size' => :'String',
        :'gender' => :'String',
        :'age_group' => :'String',
        :'color' => :'String',
        :'style' => :'String',
        :'composition' => :'Array<String>',
        :'condition' => :'String',
        :'country_of_origin' => :'String',
        :'qualifies_for_preferential_tariffs' => :'BOOLEAN',
        :'item_quantity' => :'ItemQuantity',
        :'item_value' => :'ItemValue',
        :'item_freight' => :'ItemFreight',
        :'item_insurance' => :'ItemInsurance',
        :'width' => :'Width',
        :'length' => :'Length',
        :'height' => :'Height',
        :'weight' => :'Weight',
        :'volume' => :'Volume',
        :'area' => :'Area'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'itemId')
        self.item_id = attributes[:'itemId']
      end

      if attributes.has_key?(:'hsCode')
        self.hs_code = attributes[:'hsCode']
      end

      if attributes.has_key?(:'skuNumber')
        self.sku_number = attributes[:'skuNumber']
      end

      if attributes.has_key?(:'productIdentifiers')
        self.product_identifiers = attributes[:'productIdentifiers']
      end

      if attributes.has_key?(:'productCategory')
        self.product_category = attributes[:'productCategory']
      end

      if attributes.has_key?(:'itemShortDescription')
        self.item_short_description = attributes[:'itemShortDescription']
      end

      if attributes.has_key?(:'itemDescription')
        self.item_description = attributes[:'itemDescription']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'ageGroup')
        self.age_group = attributes[:'ageGroup']
      end

      if attributes.has_key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.has_key?(:'style')
        self.style = attributes[:'style']
      end

      if attributes.has_key?(:'composition')
        if (value = attributes[:'composition']).is_a?(Array)
          self.composition = value
        end
      end

      if attributes.has_key?(:'condition')
        self.condition = attributes[:'condition']
      end

      if attributes.has_key?(:'countryOfOrigin')
        self.country_of_origin = attributes[:'countryOfOrigin']
      end

      if attributes.has_key?(:'qualifiesForPreferentialTariffs')
        self.qualifies_for_preferential_tariffs = attributes[:'qualifiesForPreferentialTariffs']
      end

      if attributes.has_key?(:'itemQuantity')
        self.item_quantity = attributes[:'itemQuantity']
      end

      if attributes.has_key?(:'itemValue')
        self.item_value = attributes[:'itemValue']
      end

      if attributes.has_key?(:'itemFreight')
        self.item_freight = attributes[:'itemFreight']
      end

      if attributes.has_key?(:'itemInsurance')
        self.item_insurance = attributes[:'itemInsurance']
      end

      if attributes.has_key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.has_key?(:'length')
        self.length = attributes[:'length']
      end

      if attributes.has_key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.has_key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.has_key?(:'volume')
        self.volume = attributes[:'volume']
      end

      if attributes.has_key?(:'area')
        self.area = attributes[:'area']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @item_id.nil?
        invalid_properties.push('invalid value for "item_id", item_id cannot be nil.')
      end

      if @hs_code.nil?
        invalid_properties.push('invalid value for "hs_code", hs_code cannot be nil.')
      end

      if @sku_number.nil?
        invalid_properties.push('invalid value for "sku_number", sku_number cannot be nil.')
      end

      if @product_identifiers.nil?
        invalid_properties.push('invalid value for "product_identifiers", product_identifiers cannot be nil.')
      end

      if @product_category.nil?
        invalid_properties.push('invalid value for "product_category", product_category cannot be nil.')
      end

      if @item_short_description.nil?
        invalid_properties.push('invalid value for "item_short_description", item_short_description cannot be nil.')
      end

      if @item_description.nil?
        invalid_properties.push('invalid value for "item_description", item_description cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @gender.nil?
        invalid_properties.push('invalid value for "gender", gender cannot be nil.')
      end

      if @age_group.nil?
        invalid_properties.push('invalid value for "age_group", age_group cannot be nil.')
      end

      if @color.nil?
        invalid_properties.push('invalid value for "color", color cannot be nil.')
      end

      if @style.nil?
        invalid_properties.push('invalid value for "style", style cannot be nil.')
      end

      if @composition.nil?
        invalid_properties.push('invalid value for "composition", composition cannot be nil.')
      end

      if @condition.nil?
        invalid_properties.push('invalid value for "condition", condition cannot be nil.')
      end

      if @country_of_origin.nil?
        invalid_properties.push('invalid value for "country_of_origin", country_of_origin cannot be nil.')
      end

      if @qualifies_for_preferential_tariffs.nil?
        invalid_properties.push('invalid value for "qualifies_for_preferential_tariffs", qualifies_for_preferential_tariffs cannot be nil.')
      end

      if @item_quantity.nil?
        invalid_properties.push('invalid value for "item_quantity", item_quantity cannot be nil.')
      end

      if @item_value.nil?
        invalid_properties.push('invalid value for "item_value", item_value cannot be nil.')
      end

      if @item_freight.nil?
        invalid_properties.push('invalid value for "item_freight", item_freight cannot be nil.')
      end

      if @item_insurance.nil?
        invalid_properties.push('invalid value for "item_insurance", item_insurance cannot be nil.')
      end

      if @width.nil?
        invalid_properties.push('invalid value for "width", width cannot be nil.')
      end

      if @length.nil?
        invalid_properties.push('invalid value for "length", length cannot be nil.')
      end

      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end

      if @weight.nil?
        invalid_properties.push('invalid value for "weight", weight cannot be nil.')
      end

      if @volume.nil?
        invalid_properties.push('invalid value for "volume", volume cannot be nil.')
      end

      if @area.nil?
        invalid_properties.push('invalid value for "area", area cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @item_id.nil?
      return false if @hs_code.nil?
      return false if @sku_number.nil?
      return false if @product_identifiers.nil?
      return false if @product_category.nil?
      return false if @item_short_description.nil?
      return false if @item_description.nil?
      return false if @size.nil?
      return false if @gender.nil?
      return false if @age_group.nil?
      return false if @color.nil?
      return false if @style.nil?
      return false if @composition.nil?
      return false if @condition.nil?
      return false if @country_of_origin.nil?
      return false if @qualifies_for_preferential_tariffs.nil?
      return false if @item_quantity.nil?
      return false if @item_value.nil?
      return false if @item_freight.nil?
      return false if @item_insurance.nil?
      return false if @width.nil?
      return false if @length.nil?
      return false if @height.nil?
      return false if @weight.nil?
      return false if @volume.nil?
      return false if @area.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          item_id == o.item_id &&
          hs_code == o.hs_code &&
          sku_number == o.sku_number &&
          product_identifiers == o.product_identifiers &&
          product_category == o.product_category &&
          item_short_description == o.item_short_description &&
          item_description == o.item_description &&
          size == o.size &&
          gender == o.gender &&
          age_group == o.age_group &&
          color == o.color &&
          style == o.style &&
          composition == o.composition &&
          condition == o.condition &&
          country_of_origin == o.country_of_origin &&
          qualifies_for_preferential_tariffs == o.qualifies_for_preferential_tariffs &&
          item_quantity == o.item_quantity &&
          item_value == o.item_value &&
          item_freight == o.item_freight &&
          item_insurance == o.item_insurance &&
          width == o.width &&
          length == o.length &&
          height == o.height &&
          weight == o.weight &&
          volume == o.volume &&
          area == o.area
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [item_id, hs_code, sku_number, product_identifiers, product_category, item_short_description, item_description, size, gender, age_group, color, style, composition, condition, country_of_origin, qualifies_for_preferential_tariffs, item_quantity, item_value, item_freight, item_insurance, width, length, height, weight, volume, area].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DhlEcommerceClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
