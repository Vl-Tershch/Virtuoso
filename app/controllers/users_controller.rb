class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find_by(params[:id])
  end

  def edit
  end

  def update
    user = User.find_by(params[:id])
    return render code: 404 unless user.present?
    user.update_columns(params)
    redirect_to :show
  end

  def destroy
    User.destroy(params[:id])
  end

  def showinstruments
    @id = current_user.id
    @instruments = current_user.instruments
  end
end
