class AddColumnsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :dicision_date, :datetime
    add_column :events, :decision_time_start, :datetime
    add_column :events, :decision_time_end, :datetime
  end
end
