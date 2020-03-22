class AdminMailer < ApplicationMailer

	def order_mail(order)
		@order = order
		@cart = @order.user.cart
		admins = User.all.select{ |user| user.is_admin == true }
		puts admins
		admins.each do |admin|
			mail(to: admin.email, subject: "Nouvelle commande")
		end
	end

end
