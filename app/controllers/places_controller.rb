class PlacesController < ApplicationController
  before_action :set_place, only: %i[index show]
  before_action :set_schedules, only: %i[index show]

  def index; end

  def show; end

  private

  def set_place
    params[:id] ||= 1 # なんか違う気もする
    @place = Place.find(params[:id]).decorate
  end

  def set_schedules
    @q = Schedule.ransack(params[:q])
    @schedules = @q.result.page(params[:page]).includes(area_sport: [:sport, { area: :place }])
  end
end
