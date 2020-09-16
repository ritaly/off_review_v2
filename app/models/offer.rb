# frozen_string_literal: true

class Offer < ApplicationRecord
  has_many :products, through: :orders
  has_many :orders
  belongs_to :client
  belongs_to :salesman
  accepts_nested_attributes_for :orders

  validates :status, inclusion: { in: %w[accepted rejected] }, allow_blank: true
end
