class TwilioController < ApplicationController
  def index
  end

  def show

  end

  def send_sms
    @number = params[:number]


    @number = validate_number

    if @number.length < 10
      flash[:error] = "Error: Please enter a valid 10 digit phone number."
      redirect_to :back
      return
      #Send error message
    end
    @client ||= Twilio::REST::Client.new

    @client.messages.create(from: '+1 872-395-6268', to: "+1#{@number}",body: 'Hey! It worked :)')
      render json: {message: "Your message was sent successfully"}
  end

  protected

  def validate_number
    @number["Phone Number"].gsub(/\D/, '')
  end
end
