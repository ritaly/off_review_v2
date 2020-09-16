# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :orders
  has_many :offers, through: :orders
end
