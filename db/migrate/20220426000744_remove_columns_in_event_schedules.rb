class RemoveColumnsInEventSchedules < ActiveRecord::Migration[6.1]
  def change
    remove_column :event_schedules, :candidate_date_start, :datetime
    remove_column :event_schedules, :candidate_date_end, :datetime
  end
end
