class AddRetiredColumnToProduct < ActiveRecord::Migration
  def change
    add_column :products, :retired, :boolean
  end
end
