module Mail
  class Message
    attr_accessor :mailgun_variables
    attr_accessor :mailgun_options
    attr_accessor :mailgun_recipient_variables
    attr_accessor :mailgun_headers

    attr_accessor :mailgun_api_key
    attr_accessor :mailgun_domain
    attr_accessor :mailgun_api_host
  end
end
