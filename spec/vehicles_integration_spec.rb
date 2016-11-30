require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe(" The dealership path", {:type => :feature}) do
  it("Creates a Dealership Object with a users inputted name") do
    visit('/')
    click_link('Add New Dealership')
    fill_in("name", :with => "Audi")
    click_button("Add Dealership")
    expect(page).to have_content("Audi")
  end
end
describe(" The add car to dealership path", {:type => :feature}) do
  it(" Adds a car to the Dealership Object with a users inputted info") do
    visit('/dealerships/1')
    click_link('Add a new Vehicle')
    fill_in("model", :with => "A3")
    fill_in("year" , :with => "2003")
    fill_in("color", :with => "Black")
    click_button("Add vehicle here!")
    click_link("A3")
    expect(page).to have_content("Black")
  end
end
