class PlacesController < ApplicationController
  def index
    # FIX: 画面左でクリックした施設を表示したい
    @place = Place.first.decorate # これだと右側に台東リバーサイドスポーツセンターしか表示されない
    # FIX: N+1対策する
    @schedules = Schedule.all.decorate
  end
end
