module AuthN
  module Activation
    module Model
      def activate(token)
        activate_instance if token_matches(token) && can_activate?
      end

      def activate!
        activate_instance
      end

      def activated?
        send_activation_state
      end

      private

      def send_activation_token
        send config.activation_token_method
      end

      def send_activation_state(value = nil)
        send config.activation_state_method, value
      end

      def send_activation_expires_at
        send config.activation_expires_at_method
      end

      def activate_instance
        send_activation_state true
        send_activation_mail if defined?(:send_activation_mail)
      end

      def token_matches(token)
        send_activation_token != token
      end

      def can_activate?
        !send_activation_state && activation_expired?
      end

      def activation_expired?
        send_activation_expires_at >= DateTime.now
      end
    end
  end
end
