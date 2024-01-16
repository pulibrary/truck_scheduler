require "rails_helper"

RSpec.describe PagesController, type: :routing do
  describe "the home page" do
    it "routes to pages#home" do
      expect(get: "/").to route_to("pages#home")
    end
  end
end