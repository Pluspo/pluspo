Batch.all.each do |batch|
  Schedule.insert_schedule_from_batch(batch)
end
