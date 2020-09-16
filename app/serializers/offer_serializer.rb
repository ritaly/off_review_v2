# frozen_string_literal: true

class OfferSerializer
  include FastJsonapi::ObjectSerializer
  attributes :status, :client_id, :salesman_id
  has_many :orders
end
