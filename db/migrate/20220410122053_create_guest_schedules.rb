class CreateGuestSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :guest_schedules do |t|
      ##ゲストID
      t.integer :guest_id, null: false, default: ""
      ##イベントスケジュールID
      t.integer :event_schedule_id, null: false, default: ""
      ##参加可否
      t.boolean :join_flag, null: false, default: ""
      
      t.timestamps
    end
  end
end
