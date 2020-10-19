class FoodDatabase
  def self.search(query)
    key = ENV['FOODDB_API_KEY']
    url = 'https://api.nal.usda.gov'
    uri = "/fdc/v1/foods/search?query=#{query}&api_key=#{ENV['FOODDB_API_KEY']}"
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers['api_key'] = ENV['FOODDB_API_KEY']
    end
    results = conn.get(uri)
    JSON.parse(results.body, symbolize_names: true)
  end
end
