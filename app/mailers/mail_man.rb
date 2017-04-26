class MailMan < ActionMailer::Base
  default from: "info@myapp.com"
  
  def alert_admin(book)
	  @name = book.name
	  @author = book.author
	  mail(to: "sriharsha.developer@gmail.com", subject: "Alert - #{@name} has been added!")
  end
end
