class ApplicationController < ActionController::Base
  before_action :set_search

  private

  def set_search
    @q = Schedule.ransack(params[:q])
    @search_schedules = @q.result.includes(area_sport: [:sport, :area]).decorate
  end
end
