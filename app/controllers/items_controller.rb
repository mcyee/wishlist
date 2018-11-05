class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def update
    Item.update(params[:item][:id],
      :title => params[:item][:title],
      :description => params[:item][:description],
      :claimlist_id => params[:item][:claimlist_id]
    )

    redirect_to current_user
  end

  def delete
    @item = Item.delete(params[:id])
  end
end
