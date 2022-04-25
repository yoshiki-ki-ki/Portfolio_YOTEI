class ChangeEventsColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :decision_date_start, :datetime
    remove_column :events, :decision_date_end, :datetime
  end
end
