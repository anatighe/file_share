class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def notification_email(shipment)
    @shipment = shipment
    @url  = shipments_path(:shipment => @shipment, :token => @shipment.token)
    
    mail(to: @shipment.recipient_email, subject: 'Someone sent you files!')
  end
  
  def user_notification_email(shipment)
    @shipment = shipment
    
    mail(to: @shipment.user_email, subject: 'The files you send have been received')
  end
end
