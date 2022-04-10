class CreateEventSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :event_schedules do |t|
      ##イベントID
      t.integer :event_id, null: false, default: ""
      ##タイトル
      t.string :guest_name, null: false, default: ""
      ##予定時間
      t.string :password, null: false, default: ""
      ##コメント
      t.text :comment, null: false, default: ""
      
      t.timestamps
    end
  end
end
