module DeviseHelper
 def devise_error_messages!
  return '' if resource.errors.empty?

   messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
   sentence = I18n.t('errors.messages.not_saved',
   count: resource.errors.count,
   resource: resource.class.model_name.human.downcase)

   html = <<-HTML
   <div class="bg-dark px-3 my-3 pb-1 text-correct rounded">
        <div class="row pt-3 rounded">
            <div class="col-12">
               <div class="alert alert-error alert-block"> <button type="button"
                class="close" data-dismiss="alert">x</button>
                <h5 class="site-red">#{sentence}</h5>
                #{messages}
               </div>
            </div>
        </div>
    </div>
   HTML

   html.html_safe
 end
end