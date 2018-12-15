class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    @item.wantlist_id = params[:wantlist_id]
    @item.save

    redirect_to current_user
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

  private

  def item_params
    params.require(:item).permit(:title, :description, :wantlist_id)
  end
end
