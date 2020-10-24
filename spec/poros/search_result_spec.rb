require 'rails_helper'
RSpec.describe SearchResult do
  it 'exists' do
    attr = {
      gtinUpc: '5555',
      description: 'its edible',
      brandOwner: 'Edible Foods Co',
      ingredients: 'love'
    }

    food = SearchResult.new(attr)

    expect(food).to be_a(SearchResult)
    expect(food.gtinupc).to eq(5555)
    expect(food.description).to eq('its edible')
    expect(food.brand_owner).to eq('Edible Foods Co')
    expect(food.ingredients).to eq('love')
  end
end
