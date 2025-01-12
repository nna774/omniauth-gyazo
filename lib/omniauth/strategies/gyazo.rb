# frozen_string_literal: true

require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Gyazo < OmniAuth::Strategies::OAuth2
      option :scope, "public upload user"

      option :client_options, {
        site: "https://api.gyazo.com",
        authorize_url: "/oauth/authorize",
        token_url: "/oauth/token"
      }

      uid do
        raw_info["uid"]
      end

      info do
        {
          "name" => raw_info["name"],
          "email" => raw_info["email"],
          "is_pro" => raw_info["is_pro"],
          "profile_image" => raw_info["profile_image"]
        }
      end

      def raw_info
        # accecc_tokenの帰ってくるレスポンスにはユーザの情報は含まれていないので取得する。
        @raw_info ||= access_token.request(:get, "https://api.gyazo.com/api/users/me", {}).parsed["user"]
      end
    end
  end
end
