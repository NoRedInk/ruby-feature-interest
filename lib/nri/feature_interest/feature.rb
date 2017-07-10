require "json"
require "net/http"
require "uri"

module Nri
  module FeatureInterest
    class Feature
      def initialize(origin)
        @origin = URI(origin)
        @http = Net::HTTP.new(@origin.host, @origin.port)
      end

      def get_features(authorization:)
        uri = URI("#{@origin}/features")

        req = Net::HTTP::Get.new(uri)
        req["Authorization"] = authorization

        @http.request(req)
      end

      def get_features_by_feature_id(feature_id, authorization:)
        uri = URI("#{@origin}/features/#{feature_id}")

        req = Net::HTTP::Get.new(uri)
        req["Authorization"] = authorization

        @http.request(req)
      end

      def post_features_by_feature_id_upvote(feature_id, authorization:)
        uri = URI("#{@origin}/features/#{feature_id}/upvote")

        req = Net::HTTP::Post.new(uri)
        req["Authorization"] = authorization

        @http.request(req)
      end

      def delete_features_by_feature_id_upvote(feature_id, authorization:)
        uri = URI("#{@origin}/features/#{feature_id}/upvote")

        req = Net::HTTP::Delete.new(uri)
        req["Authorization"] = authorization

        @http.request(req)
      end

      def post_features_by_feature_id_interview(feature_id, authorization:)
        uri = URI("#{@origin}/features/#{feature_id}/interview")

        req = Net::HTTP::Post.new(uri)
        req["Authorization"] = authorization

        @http.request(req)
      end

      def delete_features_by_feature_id_interview(feature_id, authorization:)
        uri = URI("#{@origin}/features/#{feature_id}/interview")

        req = Net::HTTP::Delete.new(uri)
        req["Authorization"] = authorization

        @http.request(req)
      end
    end
  end
end
