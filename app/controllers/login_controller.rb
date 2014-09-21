class LoginController < ApplicationController
  def index
    @user=User.find_by_name(params[:name])
    if @user
      @password=Digest::SHA256.hexdigest("#{@user.salt}#{params[:password]}")
      if @password==@user.password
        session[:current_user]=@user.id
      end
    end
  end
end
