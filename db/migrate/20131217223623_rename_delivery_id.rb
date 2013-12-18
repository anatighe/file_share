class RenameDeliveryId < ActiveRecord::Migration
  def change
    rename_column :packages, :delivery_id, :shipment_id
  end
end
