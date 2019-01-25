Bundler.require
Dotenv.load

Stripe.api_key = ENV['STRIPE_API_KEY']
token = ENV['STRIPE_TOKEN']

charge = Stripe::Charge.create({
    amount: 999,
    currency: 'usd',
    description: 'Example charge',
    source: token,
})

puts charge
