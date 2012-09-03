module AuthN
  module Activation
    autoload :Config, "authn/activation/config"

    def self.config
      @config ||= Config.new Config::DEFAULTS
    end
  end
end
