class UsersController < ApplicationController

  def create
   puts(params[:id])
   @user = User.create(params[:user])
   render json: @user
  end

  def destroy
   @user = User.find(params[:id])
   @user.delete()
  end

  def update
   @user = User.find(params[:id])
   @user.update(params[:user])
   render json: @user
  end

  def user_with_most_tickets
    return Order.joins(:users,:tickets).select("user, count(tickets)").first
  end
end
