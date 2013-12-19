namespace :remove_old_shipments do
  task :remove_old => :environment do
    Shipment.all.each do |shipment|
      (((Time.now - shipment.created_at) / 60) > 72) : shipment.destroy
    end
  end
end
