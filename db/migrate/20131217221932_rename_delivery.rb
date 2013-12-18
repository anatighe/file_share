class RenameDelivery < ActiveRecord::Migration
  def change
    rename_table :deliveries, :shipments
  end
end
