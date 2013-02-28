require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class YahooJp < OmniAuth::Strategies::OAuth2

      option :name, 'yahoojp'
      option :client_options, {
        :site => 'https://auth.login.yahoo.co.jp',
        :authorize_url => '/yconnect/v1/authorization',
        :token_url => '/yconnect/v1/token'
      }

      # option :authorize_options, [:state, :display, :prompt, :scope, :nonce]

      def request_phase
        super
      end
      
      def authorize_params
        super.tap do |params|
          %w[scope, client_options].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end
        end
      end

      uid { raw_info['user_id'] }

      info do
        prune!({
          :name       => raw_info['name'],
          :email      => raw_info['email'],
          :first_name => raw_info['given_name'],
          :last_name  => raw_info['family_name'],
          :urls => {
            'YahooJp' => rawinfo['link'],
          },
        })
      end

      extra do
        hash = {}
        hash[:raw_info] = raw_info unless skip_info?
        prune! hash
      end

      def raw_info
        @raw_info ||= access_token.get('https://userinfo.yahooapis.jp/yconnect/v1/attribute?schema=openid').parsed
      end

      def prune!(hash)
        hash.delete_if do |_, value|
          prune!(value) if value.is_a?(Hash)
          value.nil? || (value.respond_to?(:empty?) && value.empty?)
        end
      end

    end
  end
end

OmniAuth.config.add_camelization 'yahoojp', 'YahooJp'