Rails.configuration.stripe = {
  :publishable_key => 'pk_test_LeIn3WieNFTeZuiAdjnEYq3H',
  :secret_key      => 'sk_test_3JD3nWr5J5R630SXI8hfHBhG'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]