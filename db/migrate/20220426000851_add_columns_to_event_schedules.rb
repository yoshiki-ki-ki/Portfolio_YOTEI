class AddColumnsToEventSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :event_schedules, :candidate_date, :datetime
    add_column :event_schedules, :candidate_time_start, :datetime
    add_column :event_schedules, :candidate_time_end, :datetime
  end
end
