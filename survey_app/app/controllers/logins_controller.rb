class LoginsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && user = @user.authenticate(params[:password])
      session[:user] = user.id
      flash[:notice] = "Login Successfully"
     redirect_to surveys_path, method: :GET
    else
      flash.now[:error] = "Invlaid password"
      render 'new'
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end

  def parameters
      params.require(:users).permit(:name, :age, :gender, :email, :password )
  end
end
