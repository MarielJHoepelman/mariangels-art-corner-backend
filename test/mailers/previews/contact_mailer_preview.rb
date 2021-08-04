# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def welcome_email
      ContactMailer.welcome_email({email: "marielhoepelman@gmail.com"}).deliver_now
    end
end
