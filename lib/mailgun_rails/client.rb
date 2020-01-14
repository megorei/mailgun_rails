require 'rest_client'


module MailgunRails
  class Client
    attr_reader :api_key, :domain, :verify_ssl

    def initialize(api_key, domain, verify_ssl = true, mailgun_host = 'api.mailgun.net')
      @api_key = api_key
      @domain = domain
      @verify_ssl = verify_ssl
      @mailgun_host = mailgun_host
    end

    def send_message(options)
      RestClient::Request.execute(
              method: :post,
              url: mailgun_url,
              payload: options,
              verify_ssl: verify_ssl
      )
    end

    def mailgun_url
      api_url+"/messages"
    end

    def api_url
      "https://api:#{api_key}@#{mailgun_host}/v3/#{domain}"
    end
  end
end
