class FoodsController < ApplicationController

  def index
    @items = SearchFacade.find_items(params[:q])
  end

end
