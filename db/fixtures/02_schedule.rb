Batch.all.each do |batch|
  Schedule.insert_schedule_from_batch(batch)
end

# レコード数を確認する
!!ApplicationRecord.descendants.map(&:name).map(&:safe_constantize).map{|m| [m, m.count]}.each{|a| printf "%10s%6d\n", *a}
