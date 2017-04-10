class AddKindToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :kind, :integer, default: 0, null: false
  end
end
