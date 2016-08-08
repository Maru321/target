module Api
  module V1
    class TopicsController < Api::V1::ApiController
      # GET /api/v1/topics
      def index
        @topics = Topic.all
      end
    end
  end
end
