# frozen_string_literal: true

class MailerBox < Product
  MINIMUM = 200
  MAXIMUM = 1000

  ATTRIBUTES_ALLOWED = %w[height width length].freeze

  #   def height
  #     0
  #   end

  #   def width
  #     0
  #   end

  #   def length
  #     0
  #   end

  #   def price_formula
  #     (width + height + length) * 0.1
  #   end
end
