class ApplicationController < ActionController::Base
  before_action :set_search

  def set_search
    @q = Schedule.ransack(params[:q])
    @search_schedules = @q.result.includes(area_sport: [:sport, :area]).order(started_at: :asc, finished_at: :asc).order("sport.name").decorate
  end
end
