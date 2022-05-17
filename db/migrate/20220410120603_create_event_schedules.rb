class CreateEventSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :event_schedules do |t|
      ##イベントID
      t.integer :event_id, null: false
      ##候補日時（開始）
      t.datetime :candidate_date_start, null: false
      ##候補日時（終了）
      t.datetime :candidate_date_end, null: false
      
      t.timestamps
    end
  end
end
