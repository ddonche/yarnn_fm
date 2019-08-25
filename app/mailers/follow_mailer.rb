class FollowMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_follow(user, follower)
    @user = user
    @follower = follower

    mail to: @user.email, 
    subject: "You have a new follower on Yarnn.FM."
  end
end