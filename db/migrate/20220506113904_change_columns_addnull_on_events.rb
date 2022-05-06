class ChangeColumnsAddnullOnEvents < ActiveRecord::Migration[6.1]
  def change
    change_column_null :events, :schedule_time, true
    change_column_null :events, :comment, true
  end
end
