class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :user_email
      t.string :recipient_email
      t.string :message
      t.string :token

      t.timestamps
    end
  end
end
