class SearchFacade
  def self.find_items(query)
    search_results = FoodService.search(query)
    search_results[:foods][0..9].map do |food|
      SearchResult.new(food)
    end
  end
end
