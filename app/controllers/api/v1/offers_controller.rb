# frozen_string_literal: true

module Api
  module V1
    class OffersController < ApplicationController
      # GET /offers
      def index
        offers = Offer.all
        # options = { include: [:orders] }
        #render json: OfferSerializer.new(offers, options).serialized_json
        render json: offers, include: :orders, status: :ok
      end

      # GET /offers/1
      def show
        offer = Offer.find(params[:id])
        render json: OfferSerializer.new(offer).serialized_json
      end

      def create
        offer = Offer.new(offer_params)
        if offer.save
          render json: offer, include: :orders, status: :created
        else
          render json: offer.errors, status: :unprocessable_entity
        end
      end

      private

      # Trusted parameters through
      def offer_params
        params.require(:offer).permit(:status, :client_id, :salesman_id,
                                      orders: %i[quantity product_id])
      end
    end
  end
end
