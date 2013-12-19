namespace :remove_old_shipments do
  task :remove_old => :environment do
    Shipment.all.each do |shipment|
      if shipment.destroy if shipment.time_left < 0
    end
  end
end
