class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      ##イベントID
      t.integer :event_id, null: false
      ##ゲスト名
      t.string :guest_name, null: false, default: ""
      ##パスワード
      t.string :password, null: false, default: ""
      ##主催者へのコメント
      t.text :comment_to_host, null: false
      
      t.timestamps
    end
  end
end
