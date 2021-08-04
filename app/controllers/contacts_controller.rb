class ContactsController < ApplicationController
  def create

    ContactMailer.welcome_email(params).deliver_now

    render :json => true
  end
end
