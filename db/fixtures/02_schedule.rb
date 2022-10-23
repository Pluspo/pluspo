# TODO: 一旦cycleを考慮せずに作ってあるので、cycle考慮して作り直す
Batch.all.each do |batch|
  Schedule.create!(
    area_sport_id: batch.area_sport_id,
    started_at: Time.zone.parse(batch.started_at),
    finished_at: Time.zone.parse(batch.finished_at)
  )
end
