# frozen_string_literal: true

class PolyMailer < Product
  MINIMUM = 50
  MAXIMUM = 2000
  ATTRIBUTES_ALLOWED = %w[height width material].freeze
  MATERIAL_ALLOWED = %w[black transparent].freeze

  #   def height
  #     0
  #   end

  #   def width
  #     0
  #   end

  #   def material
  #     'black'
  #   end

  #   def price_formula
  #    factor = material == 'black' ? 0.1 : 0.25
  #    (width + height) * factor
  #   end
end
