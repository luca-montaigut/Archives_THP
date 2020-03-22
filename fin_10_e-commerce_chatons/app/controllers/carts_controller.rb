class CartsController < ApplicationController
  
  def show
  end

  def update
    JoinCartItem.create(cart_id: @cart.id, 
                        item_id: Item.find(params[:id]).id, 
                        quantity: params[:quantity])

    respond_to do |format|
      format.js {}
      format.html { render 'new'}
    end
  end

  def destroy
    item = Item.find(params[:id])
    JoinCartItem.find_by(cart_id: @cart.id, item_id: item.id).destroy
    respond_to do |format|
      format.js  
    end
  end

  def is_in_cart?(id)
    self.join_cart_iems.find_by(cart_id: self.id, item_id: id)
  end

  private

  def cart_params
    params.require(:cart).permit(:user_id, :id)
  end

end
