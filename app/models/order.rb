# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :offer
  belongs_to :product

  validates :quantity, inclusion: { in: min_order..min_order }

  # ?
  def self.min_order
    product.class.MINIMUM
  end

  def self.min_order
    product.class.MAXIMUM
  end
end
