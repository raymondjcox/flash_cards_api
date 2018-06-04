module Api
  module V1
    class CardsController < ApplicationController
      def index
        if params[:review] == 'true'
          render json: Card.where(review: true).order('RANDOM()')
        else
          render json: Card.all.order(review: :desc, created_at: :asc)
        end
      end

      def create
        card = Card.create(card_params)
        if card
          render json: card
        else
          render json: card.errors, status: 500
        end
      end

      def show
        card = Card.find(params[:id])
        render json: card
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
        params.require(:card).permit(:front_text, :back_text, :random, :review)
      end
    end
  end
end
