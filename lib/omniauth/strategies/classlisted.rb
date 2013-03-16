require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Classlisted < OmniAuth::Strategies::OAuth2
      option :name, :classlisted

      option :client_options, {
        site: 'http://api.classlisted.dev',
        authorize_url: 'http://classlisted.dev/oauth/authorize',
        token_url: 'http://classlisted.dev/oauth/token'
      }

      def request_phase
        super
      end

      uid do
        raw_info['id']
      end

      info do
        { 
          name: "#{raw_info['firstname']} #{raw_info['lastname']}",
          firstname: raw_info['firstname'], 
          lastname: raw_info['lastname'], 
          email: raw_info['email'] 
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/v1/account').parsed
      end

    end
  end
end