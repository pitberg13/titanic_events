class AdminUsersController < ApplicationController

  #before_action :confirm_logged_in

  layout 'admin'

  def index
    @admin_users = AdminUser.sorted
  end

  def new
    @admin_user = AdminUser.new
  end

  def create
    @admin_user = AdminUser.new(admin_user_params)
    if @admin_user.save
      flash[:notice] = 'New user created.'
      redirect_to(:action => 'index')
    else
      render("new")
    end
  end

  def edit
    @admin_user = AdminUser.find(params[:id])
  end

  def update
    @admin_user = AdminUser.find(params[:id])
    if @admin_user.update_attributes(admin_user_params)
      flash[:notice] = 'User updated.'
      redirect_to(:action => 'index')
    else
      render("edit", :id => @admin_user.id)
    end
  end

  def delete
    @admin_user = AdminUser.find(params[:id])
  end

  def destroy
    AdminUser.find(params[:id]).destroy
    flash[:notice] = "User #{@admin_user.username} has been denied."
    redirect_to(:action => 'index')
  end

  private

  def admin_user_params
    params.require(:admin_user).permit(:username, :email, :password, :password_confirmation, :first_name, :last_name)
  end

end
