class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all.group(:categories)
    @categories = Category.all
    @grouped_menu_items = MenuItem.all.group_by { |x| x.categories }
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def new
    @menu_item = MenuItem.new
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)

    if @menu_item.save
      redirect_to @menu_item
    else
      render 'new'
    end
  end

  def update
    @menu_item = MenuItem.find(params[:id])

    if @menu_item.update(menu_item_params)
      redirect_to @menu_item
    else
      render 'edit'
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy

    redirect_to menu_items_path
  end

  private
  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :price)
  end
end
