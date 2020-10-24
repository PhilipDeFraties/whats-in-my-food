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
          expect(page).to have_content('results count: 10')
        end

        it "I should see a list of 10 foods with the query in ingredients" do
          expect(page).to have_css('.food', count: 10)
        end

        it "For each food I should see a list of details" do
          within('#food-1') do
            expect(page).to have_content("GTIN/UPC code: 70560951975")
            expect(page).to have_content("description: SWEET POTATOES")
            expect(page).to have_content("Brand Owner: The Pictsweet Company")
            expect(page).to have_content("ingredients: SWEET POTATOES.")
          end
        end
      end
    end
  end
end
