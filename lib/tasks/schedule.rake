namespace :pluspo do
  desc '月末に翌月のスポーツスケジュールを登録する'
  task create_next_month_schedules: :environment do
    Batch.all.each do |batch|
      Schedule.insert_schedule_from_batch(batch, 1)
    end
  end
end
