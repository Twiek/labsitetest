require 'spec_helper'

describe "Welcome Page" do

  subject { page }

  describe "Home Page" do
    before do
     # FactoryGirl.create :area
     visit root_path
    end

    it "should have the right content" do
      # find("img[@alt='Logo-small']").click
      should have_content("Jetzt putzen lassen!")
      should have_content("Team")
      # should have_selector(".offers-price-image")
    end

    # it "should lead to an area show page", visual: true do
    #   fill_in('first-zip-input', :with => '12345')
    #   first('.submit').click
    #   # click_link_or_button('asdfg')
    #   should have_content("Leider ist diese Postleitzahl noch nicht in unserer Datenbank")
    # end
  end
end
