# Preview all emails at https://978249044b0c45268f1129d55dfc119e.vfs.cloud9.ap-northeast-1.amazonaws.com//cloud9/ide/978249044b0c45268f1129d55dfc119e?#/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at https://978249044b0c45268f1129d55dfc119e.vfs.cloud9.ap-northeast-1.amazonaws.com//cloud9/ide/978249044b0c45268f1129d55dfc119e?#/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at https://978249044b0c45268f1129d55dfc119e.vfs.cloud9.ap-northeast-1.amazonaws.com//cloud9/ide/978249044b0c45268f1129d55dfc119e?#/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

end
