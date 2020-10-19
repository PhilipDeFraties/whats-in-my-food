require 'rails_helper'

RSpec.describe 'Search foods' do
  describe 'As a visitor on the home page' do
    describe "When I fill in the search form with 'sweet potatoes'" do
      describe "And I click 'Search'" do
        it "I should be on the page '/foods'" do
          visit '/'

          fill_in 'q', with: 'sweet potatoes'

          click_button 'Search'

          expect(current_path).to eq('/foods')
        end
      end
    end
  end
end
