class PasswordResetsController < ApplicationController
  def index
  end
# app/controllers/password_resets_controller.rb

  def reset_password
    # Find the user by email and OTP
    @user = User.find_by(email: params[:email], otp: params[:otp])

    if @user && @user.otp_valid?
      # Update the user's password and clear OTP
      @user.update(password: params[:password], otp: nil)
      redirect_to login_path, notice: 'Your password has been successfully updated.'
    else
      flash.now[:alert] = 'Invalid OTP. Please try again.'
      render :new
    end
  end
end
