require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advmt) { Advertisement.create!(title: "Yummy Yogurt", body: "New openning in Burlingame!", price: 5) }

  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(advmt).to have_attributes(title: "Yummy Yogurt", body: "New openning in Burlingame!", price: 5)
    end
  end
end
