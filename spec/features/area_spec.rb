require 'spec_helper'

describe "Area" do

  subject { page }

  describe "Page" do
    before do
     FactoryGirl.create :zip_code
     visit root_path
    end

    it "should show an error message if non existing zip is used" do
      fill_in('first-zip-input', :with => '12345')
      first('.submit').click
      should have_content("Leider ist diese Postleitzahl noch nicht in unserer Datenbank")
    end

    it "should have the right content if existing zip is used" do
      fill_in('first-zip-input', :with => '14089')
      first('.submit').click
      should have_content("Berlin-Gatow")
    end
  end
end
