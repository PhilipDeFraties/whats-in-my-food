class SearchFacade
  def self.find_items(query)
    FoodDatabase.search(query)
  end
end
