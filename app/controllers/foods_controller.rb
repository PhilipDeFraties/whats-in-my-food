class FoodsController < ApplicationController

  def index
    @foods = SearchFacade.find_items(params[:q])
  end

end
