# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
salesmen = Salesman.create(
  [
    {
      username: 'Salesman1'
    },
    {
      username: 'Salesman2'
    }
  ]
)

clients = Client.create(
  [
    {
      username: 'Clien1'
    },
    {
      username: 'Client2'
    }
  ]
)

offers = Offer.create(
  [
    {
      status: 'rejected',
      client: clients.first,
      salesman: salesmen.first
    },
    {
      status: 'accepted',
      client: clients.first,
      salesman: salesmen.first
    }
  ]
)

products = Product.create(
  [
    {
      type: 'MailerBox',
      name: nil,
      price: 0,
      settings: ''
    }
  ]
)

offerproduct = Order.create(
  [
    {
      quantity: 10,
      total_price: 0,
      offer: offers.first,
      product: products.first
    }
  ]
)
