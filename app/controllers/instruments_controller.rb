class InstrumentsController < ApplicationController
  def index
    user = User.find_by(params[:users_id])
    @instruments = user.instruments
  end

  def new
  end

  def show
    user = User.find_by(params[:users_id])
    @instrument = user.instruments.find_by(params[:id])
  end

  def update
    user = User.find_by(params[:users_id])
    instrument = user.instruments.find_by(params[:id])
    return render code: 404 unless instrument.present?
    instrument.update_columns(params)
    redirect_to :show
  end

  def destroy
    user = User.find_by(params[:users_id])
    Instrument.user.instruments.destroy(params[:id])
    redirect_to :index
  end

end
