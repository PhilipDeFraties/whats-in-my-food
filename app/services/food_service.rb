class FoodService
  def self.search(query)
    conn = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search") do |faraday|
      faraday.params[:api_key] = ENV['FOODDB_API_KEY']
      faraday.params[:query] = query
    end
    JSON.parse(conn.body, symbolize_names: true)
  end
end
