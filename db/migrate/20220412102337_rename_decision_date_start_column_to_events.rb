class RenameDecisionDateStartColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :decision_dete_start, :decision_date_start
  end
end
