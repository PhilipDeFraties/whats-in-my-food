require 'rails_helper'

RSpec.describe 'Search foods' do
  describe 'As a visitor on the home page' do
    describe "When I fill in the search form with 'sweet potatoes'" do
      describe "And I click 'Search'" do
        before :each do
          visit '/'
          fill_in 'q', with: 'sweet potatoes'
          click_button 'Search'
        end

        it "I should be on the page '/foods'" do
          expect(current_path).to eq('/foods')
        end

        it "I should see the total number of items returned by search" do
          expect(page).to have_content('results count: 50')
        end
      end
    end
  end
end
