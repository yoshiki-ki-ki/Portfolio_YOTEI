class EventAttributesForm
  # Formについて調べて子レコードを複数保存できるようにする必要あり
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :event_schedules

  def params
    attributes.deep_symbolize_keys
  end
end