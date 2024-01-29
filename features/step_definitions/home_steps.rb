# frozen_string_literal: true

require_relative '../../page_objects/pages/home'
require_relative '../../page_objects/pages/pdp'

Given("I'm an anonymous user on the home page") do
    @home_page = Home.new(driver)
end

When('I select one of the products') do
    @home_page.go_to_backpack_pdp
end

When("I'm redirected to the product details page") do
    pdp_page = Pdp.new(driver)
    expect(pdp_page.add_to_cart_text).to eq 'Add To Cart'
end