class ChangeColumnsAddNotnullOnEventSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :event_schedules, :candidate_date, :datetime, null: false
    change_column :event_schedules, :candidate_time_start, :datetime, null: false
    change_column :event_schedules, :candidate_time_end, :datetime, null: false
  end
end
