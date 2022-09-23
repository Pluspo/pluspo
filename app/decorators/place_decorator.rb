class PlaceDecorator < ApplicationDecorator
  delegate_all

  def opening_hours
    "#{opened_at.strftime('%-H:%M')}~#{closed_at.strftime('%-H:%M')}"
  end
end
