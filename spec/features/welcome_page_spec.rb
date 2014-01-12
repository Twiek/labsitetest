require 'spec_helper'

describe "Welcome Page" do

  subject { page }

  describe "Home Page" do
    before { visit root_path}

    it "should have a link to the home page", visual: true do
      find("img[@alt='Logo-small']").click
      should have_content("Jetzt putzen lassen!")
      should have_selector(".offers-price-image")
    end
  end
end
