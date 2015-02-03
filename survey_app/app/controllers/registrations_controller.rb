class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(parameters)
    if @user.save
      flash[:notice] = "Successfully register"
      redirect_to root_path
    else
      flash[:error] = "Something is Wrong"
      render 'new'
    end
  end

  def parameters
    params.require(:user).permit(:name, :age, :gender, :email, :password, :password_confirmation)
  end
end
