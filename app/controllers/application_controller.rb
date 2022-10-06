class ApplicationController < ActionController::Base
  before_action :set_search

  private
  def set_search
    @q = Schedule.ransack(params[:q])
    @search_schedules = @q.result.includes(:sport, :area).decorate
    @sports = Sport.all
  end
end
