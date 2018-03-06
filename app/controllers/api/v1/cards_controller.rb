module Api
  module V1
    class CardsController < ApplicationController
      def index
        render json: Card.all
      end

      def create
        card = Card.create(card_params)
        if card
          render json: card
        else
          render json: card.errors, status: 500
        end
      end

      def update
        card = Card.update(params[:id], card_params)
        if card
          render json: card
        else
          render json: card.errors, status: 500
        end
      end

      def destroy
        card = Card.destroy(params[:id])
        if card
          render json: {}
        else
          render json: card.errors, status: 500
        end
      end

      def card_params
        params.require(:card).permit(:front_text, :back_text)
      end
    end
  end
end
