module ApplicationHelper
  def stripe_express_path
    "https://connect.stripe.com/express/oauth/authorize?response_type=code&client_id=ca_DBKdHaMG5Mv9P18R4p7BvO6FQtvW80NI&scope=read_write"
  end
  
  def onboarding_step_icon(step_completed)
    color = step_completed ? "site-blue" : "site-red"
    content_tag :i, nil, class: ["fas", "fa-check", color, "mr-2"]
  end
end