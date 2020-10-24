class SearchResult
  attr_reader :gtinupc,
              :description,
              :brand_owner,
              :ingredients
  def initialize(attrs)
    @gtinupc = attrs[:gtinUpc].to_i
    @description = attrs[:description]
    @brand_owner = attrs[:brandOwner]
    @ingredients = attrs[:ingredients]
  end
end
