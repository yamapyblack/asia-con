class UsersController < ApplicationController
  # pagination count
  PER = 18

  # GET /users/1
  def show
    @user = User.find(params[:id])
    @materials = Material.where(user_id: params[:id]).order('updated_at DESC').page(params[:page]).per(PER)
  end

end
