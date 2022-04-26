class ChangeColumnsAddNotnullOnEventSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :event_schedules, :candidate_date, :datetime, default: "", null: false
    change_column :event_schedules, :candidate_time_start, :datetime, default: "", null: false
    change_column :event_schedules, :candidate_time_end, :datetime, default: "", null: false
  end
end
