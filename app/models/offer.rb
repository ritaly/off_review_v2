# frozen_string_literal: true

class Offer < ApplicationRecord
  has_many :products, through: :orders
  has_many :orders
  belongs_to :client
  belongs_to :salesman
end
