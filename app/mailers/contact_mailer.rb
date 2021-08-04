class ContactMailer < ApplicationMailer

  def welcome_email(contact)
    @contact = contact

    mail(
      from:    "#{contact[:name]} <#{contact[:email]}>",
      to:      'marielhoepelman@gmail.com',
      subject: 'Contact from Mariangel\'s Art Corner'
    )
  end
end
