class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :quantity, :product_id
end
