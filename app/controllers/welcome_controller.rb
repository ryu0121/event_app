class WelcomeController < ApplicationController
  skip_before_action :authenticate
  def index
    @q = Event.ransack(params[:q])
    @events = @q.result(distinct: true)
                .page(params[:page]).per(10)
                .where("start_at > ?", Time.zone.now)
                .order(:start_at)
  end

  def search
    @q = Event.ransack(search_params)
    @events = @q.result(distinct: true).page(params[:page]).per(10)

    render :index
  end

  private
  
  def search_params
    params.require(:q).permit(:name_cont, :place_cont, :start_at, :end_at)
  end
end