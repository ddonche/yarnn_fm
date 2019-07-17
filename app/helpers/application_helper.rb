module ApplicationHelper
  def stripe_express_path
    "https://connect.stripe.com/express/oauth/authorize?response_type=code&client_id=ca_DBKdHaMG5Mv9P18R4p7BvO6FQtvW80NI&scope=read_write"
  end
end