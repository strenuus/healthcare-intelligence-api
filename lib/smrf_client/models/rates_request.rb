=begin
#Payer Analytics - Healthcare Intelligence API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module SmrfClient
  class RatesRequest
    attr_accessor :rate_source

    attr_accessor :billing_code

    attr_accessor :service_code

    attr_accessor :negotiation_arrangement

    attr_accessor :billing_class

    attr_accessor :entity_type

    attr_accessor :negotiated_supertype

    attr_accessor :zips

    # intersection of specialties of the provider and of the billing code
    attr_accessor :applicable_specialties

    attr_accessor :npi_specialties

    attr_accessor :limit

    attr_accessor :offset

    attr_accessor :sort_by

    attr_accessor :sort_direction

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'rate_source' => :'rate_source',
        :'billing_code' => :'billing_code',
        :'service_code' => :'service_code',
        :'negotiation_arrangement' => :'negotiation_arrangement',
        :'billing_class' => :'billing_class',
        :'entity_type' => :'entity_type',
        :'negotiated_supertype' => :'negotiated_supertype',
        :'zips' => :'zips',
        :'applicable_specialties' => :'applicable_specialties',
        :'npi_specialties' => :'npi_specialties',
        :'limit' => :'limit',
        :'offset' => :'offset',
        :'sort_by' => :'sort_by',
        :'sort_direction' => :'sort_direction'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'rate_source' => :'RateSourceRequest',
        :'billing_code' => :'BillingCodeAndType',
        :'service_code' => :'PlaceOfServiceCode',
        :'negotiation_arrangement' => :'NegotiationArrangement',
        :'billing_class' => :'BillingClass',
        :'entity_type' => :'EntityType',
        :'negotiated_supertype' => :'NegotiatedSupertype',
        :'zips' => :'Array<String>',
        :'applicable_specialties' => :'String',
        :'npi_specialties' => :'String',
        :'limit' => :'Integer',
        :'offset' => :'Integer',
        :'sort_by' => :'String',
        :'sort_direction' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'BaseRequest',
      :'RatesRequestAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SmrfClient::RatesRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SmrfClient::RatesRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'rate_source')
        self.rate_source = attributes[:'rate_source']
      end

      if attributes.key?(:'billing_code')
        self.billing_code = attributes[:'billing_code']
      end

      if attributes.key?(:'service_code')
        self.service_code = attributes[:'service_code']
      end

      if attributes.key?(:'negotiation_arrangement')
        self.negotiation_arrangement = attributes[:'negotiation_arrangement']
      end

      if attributes.key?(:'billing_class')
        self.billing_class = attributes[:'billing_class']
      end

      if attributes.key?(:'entity_type')
        self.entity_type = attributes[:'entity_type']
      end

      if attributes.key?(:'negotiated_supertype')
        self.negotiated_supertype = attributes[:'negotiated_supertype']
      end

      if attributes.key?(:'zips')
        if (value = attributes[:'zips']).is_a?(Array)
          self.zips = value
        end
      end

      if attributes.key?(:'applicable_specialties')
        self.applicable_specialties = attributes[:'applicable_specialties']
      end

      if attributes.key?(:'npi_specialties')
        self.npi_specialties = attributes[:'npi_specialties']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'offset')
        self.offset = attributes[:'offset']
      end

      if attributes.key?(:'sort_by')
        self.sort_by = attributes[:'sort_by']
      end

      if attributes.key?(:'sort_direction')
        self.sort_direction = attributes[:'sort_direction']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @rate_source.nil?
        invalid_properties.push('invalid value for "rate_source", rate_source cannot be nil.')
      end

      if @billing_code.nil?
        invalid_properties.push('invalid value for "billing_code", billing_code cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @rate_source.nil?
      return false if @billing_code.nil?
      sort_by_validator = EnumAttributeValidator.new('String', ["tin_value", "npi", "provider_name"])
      return false unless sort_by_validator.valid?(@sort_by)
      sort_direction_validator = EnumAttributeValidator.new('String', ["asc", "desc"])
      return false unless sort_direction_validator.valid?(@sort_direction)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_by Object to be assigned
    def sort_by=(sort_by)
      validator = EnumAttributeValidator.new('String', ["tin_value", "npi", "provider_name"])
      unless validator.valid?(sort_by)
        fail ArgumentError, "invalid value for \"sort_by\", must be one of #{validator.allowable_values}."
      end
      @sort_by = sort_by
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_direction Object to be assigned
    def sort_direction=(sort_direction)
      validator = EnumAttributeValidator.new('String', ["asc", "desc"])
      unless validator.valid?(sort_direction)
        fail ArgumentError, "invalid value for \"sort_direction\", must be one of #{validator.allowable_values}."
      end
      @sort_direction = sort_direction
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          rate_source == o.rate_source &&
          billing_code == o.billing_code &&
          service_code == o.service_code &&
          negotiation_arrangement == o.negotiation_arrangement &&
          billing_class == o.billing_class &&
          entity_type == o.entity_type &&
          negotiated_supertype == o.negotiated_supertype &&
          zips == o.zips &&
          applicable_specialties == o.applicable_specialties &&
          npi_specialties == o.npi_specialties &&
          limit == o.limit &&
          offset == o.offset &&
          sort_by == o.sort_by &&
          sort_direction == o.sort_direction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [rate_source, billing_code, service_code, negotiation_arrangement, billing_class, entity_type, negotiated_supertype, zips, applicable_specialties, npi_specialties, limit, offset, sort_by, sort_direction].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = SmrfClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
