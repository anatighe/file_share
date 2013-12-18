require "spec_helper"

describe UserMailer do
  describe 'notification' do
    let(:package) { FactoryGirl.create(:package) }
    let(:shipment) { FactoryGirl.create(:shipment) }
    let(:mail) { UserMailer.notification_email(shipment) }

    it 'renders the subject' do
      mail.subject.should eq 'Someone sent you files!'
    end

    it 'renders the receiver email' do
      mail.to.should eq [shipment.recipient_email]
    end

    it 'renders the sender email' do
      mail.from.should eq ['from@example.com']
    end

    it 'renders the user name' do
      mail.body.encoded.should have_content(shipment.name)
    end
  end    
end
