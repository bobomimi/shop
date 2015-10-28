Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_Rcrp2cTQOYTzGz0qpXvlyLFw'],
  :secret_key      => ENV['sk_test_YF0WIEu6iPCAOahnySrxSvDP']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]