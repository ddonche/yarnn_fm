class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment(comment)
    @comment = comment
    @commentable = @comment.commentable

    mail to: @commentable.user.email, 
    subject: "#{@comment.user.username} replied to you on Yarnn.FM."
    content_type: "text/html"
  end
end