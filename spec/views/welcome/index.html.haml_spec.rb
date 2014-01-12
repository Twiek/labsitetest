require 'spec_helper'

describe "Welcome Page" do

  subject { page }

  describe "Home Page" do
    before { visit root_path}

    it "should have a link to the home page" do
      should have_link(href: root_path)
    end

  end
end
