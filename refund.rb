Bundler.require
Dotenv.load

Stripe.api_key = ENV['STRIPE_API_KEY']
charge_id = ENV['STRIPE_CHARGE_ID']

refund = Stripe::Refund.create({
  charge: charge_id,
})

puts refund
