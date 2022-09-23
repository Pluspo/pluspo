class ScheduleDecorator < ApplicationDecorator
  delegate_all

  def full_time
    "#{started_at.strftime('%H:%M')}~#{finished_at.strftime('%H:%M')}"
  end

  def date_and_day_of_week
    day_of_week = %w[日 月 火 水 木 金 土]
    "#{started_at.strftime('%-m/%-d')}(#{day_of_week[started_at.wday]})"
  end
end
