module ApplicationHelper
  
  def subscribed?
    user_signed_in? && current_user.stripe_subscription_id?
  end 

  def stripe_express_path
    "https://connect.stripe.com/express/oauth/authorize?response_type=code&client_id=ca_DBKdHaMG5Mv9P18R4p7BvO6FQtvW80NI&scope=read_write"
  end
  
  def onboarding_step_icon(step_completed)
    color = step_completed ? "site-blue" : "site-red"
    content_tag :i, nil, class: ["fas", "fa-check", color, "mr-2"]
  end
  
  def titleize(str)
    str.gsub('_', ' ').capitalize
  end
  
  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)}", role: "alert") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end
end