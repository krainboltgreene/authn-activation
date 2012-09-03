module AuthN
  module Activation
    class Config < AltStruct
      DEFAULT = {
        mailer_klass: "ActivationMailer",
        activation_state_method: :activation_state,
        activation_token_method: :activation_token,
        activation_expires_at_method: :activation_expires_at
      }
    end
  end
end
