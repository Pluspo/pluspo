# 来月1ヶ月分のScheduleを作成する
# 引数 : Batch.cycle
# 戻り値 : 配列で対応する日付を返す
#        [Time, Time, ..., Time]
namespace :pluspo do
  desc '月末に翌月のスポーツスケジュールを登録する'
  task create_next_month_schedules: :environment do
    Schedule.insert_schedule_from_batches(Batch.all)
  end
end
