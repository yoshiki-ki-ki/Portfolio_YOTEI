class RenameDecisionDeteEndColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :decision_dete_end, :decision_date_end
  end
end
