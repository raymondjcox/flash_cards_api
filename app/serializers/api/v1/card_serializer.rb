module Api
  module V1
    class CardSerializer < ActiveModel::Serializer
      attributes :id, :front_text, :back_text, :review
    end
  end
end
