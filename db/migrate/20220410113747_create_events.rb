class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      ##ホストID
      t.integer :host_id, null: false
      ##タイトル
      t.string :title, null: false, default: ""
      ##予定時間
      t.string :schedule_time, null: false, default: ""
      ##コメント
      t.text :comment, null: false
      ##決定日時（開始）
      t.datetime :decision_dete_start, null: false
      ##決定日時（終了）
      t.datetime :decision_dete_end, null: false

      t.timestamps
    end
  end
end
