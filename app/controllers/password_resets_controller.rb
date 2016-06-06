class PasswordResets < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    user.send_password_reset if user
    redirect_to message_url, notice: 'Password change email sent'
  end

  def update
    user = User.find_by(password_reset_token: params[:id])
    if user.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, alert: 'Token expired'
    else
      redirect_to message_url, notice: 'Password successfully changed'
    end
  end
end