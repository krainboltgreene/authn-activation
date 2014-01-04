require_relative 'activation/model'

module AuthN
  module Model
    module ClassMethods
      def has_activation(options = {})
        extend AuthN::Activation::Model
        merge_config_with options
      end
    end
  end
end
