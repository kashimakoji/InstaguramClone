class ContactMailer < ApplicationMailer
  def contact_mail(feed)
    @feed = feed
    mail to: "aboutagial@yahoo.co.jp", subject: "お問い合わせの確認メール"
  end
end
