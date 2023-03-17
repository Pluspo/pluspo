class PlacesController < ApplicationController
  before_action :set_place, only: %i[index show]
  before_action :set_schedules, only: %i[index show]

  def index; end

  def show; end

  private

  def set_place
    params[:id] ||= 1 # なんか違う気もする
    @place = Place.includes(areas: [area_sports: :sport]).find(params[:id]).decorate
  end

  def set_schedules
    @q = Schedule.ransack(params[:q])
    @schedules = @q.result.includes(area_sport: [:sport, area: :place]).order(started_at: :asc, finished_at: :asc).order("sport.name").after_today.page(params[:page])
  end
end
