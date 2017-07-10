require "json"
require "net/http"
require "uri"

module Nri
  module FeatureInterest
    class Admin
      def initialize(origin)
        @origin = URI(origin)
        @http = Net::HTTP.new(@origin.host, @origin.port)
      end

      def get_features_admin(authorization:)
        uri = URI("#{@origin}/features/admin")

        req = Net::HTTP::Get.new(uri)
        req["Authorization"] = authorization

        @http.request(req)
      end

      def post_features(body:, authorization:)
        uri = URI("#{@origin}/features")

        req = Net::HTTP::Post.new(uri)
        req["Content-Type"] = "application/json"
        req["Authorization"] = authorization

        @http.request(req, body)
      end

      def put_features_by_feature_id(feature_id, body:, authorization:)
        uri = URI("#{@origin}/features/#{feature_id}")

        req = Net::HTTP::Put.new(uri)
        req["Content-Type"] = "application/json"
        req["Authorization"] = authorization

        @http.request(req, body)
      end
    end
  end
end
