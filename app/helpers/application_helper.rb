module ApplicationHelper
  def stripe_express_path
    "https://connect.stripe.com/express/oauth/authorize?response_type=code&client_id=ca_DBKdNNndfDs8uWoBL6SOHhnwocLif9BV&scope=read_write"
  end
end