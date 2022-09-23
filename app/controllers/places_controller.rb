class PlacesController < ApplicationController
  def index
    # FIX: N+1対策する
    @schedules = Schedule.all.decorate
  end
end
