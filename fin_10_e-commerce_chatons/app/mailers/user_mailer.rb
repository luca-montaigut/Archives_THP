class UserMailer < ApplicationMailer

	def purchase_mail(order)
		@order = order
		@cart = @order.user.cart
		mail(to: @order.user.email, subject: 'Vos achats')
	end

end
