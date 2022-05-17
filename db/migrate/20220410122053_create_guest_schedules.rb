class CreateGuestSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :guest_schedules do |t|
      ##ゲストID
      t.integer :guest_id, null: false
      ##イベントスケジュールID
      t.integer :event_schedule_id, null: false
      ##参加可否
      t.boolean :join_flag, null: false
      
      t.timestamps
    end
  end
end
