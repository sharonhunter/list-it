class AddPriorityToListItems < ActiveRecord::Migration
  def change
    add_column :list_items, :priority, :boolean, null: false, default: false
  end
end
