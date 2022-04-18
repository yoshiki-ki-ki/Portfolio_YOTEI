class ChangeColumnToNull < ActiveRecord::Migration[6.1]
  def change
    # NotNullの制約を解除
    change_column_null :events, :decision_date_start, true
    change_column_null :events, :decision_date_end, true
    change_column_null :guests, :comment_to_host, true
  end
end
