# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :offer
  belongs_to :product
end
