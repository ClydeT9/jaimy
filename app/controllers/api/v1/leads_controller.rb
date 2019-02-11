module Api::V1
  class Api::V1::LeadsController < ApplicationController
    before_action :set_lead, only: [:show]

    def index
      paginate json: Lead.all, per_page: 20
    end

    def show
      render json: @lead
    end

    def create
    end

    private
      def set_lead
        @lead = Lead.find(params[:id])
      end
  end
end