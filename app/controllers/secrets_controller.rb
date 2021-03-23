class SecretsController < ApplicationController
  before_action :require_login
  
  def show
    @secret = "Jesus, the Son of God"
    render :secret
  end

  def require_login
    redirect_to login_path unless current_user
  end
end
