require 'rails_helper'

RSpec.describe "trucks/index", type: :view do
  before(:each) do
    assign(:trucks, [
      FactoryBot.create(:truck),
      FactoryBot.create(:truck)
    ])
  end

  it "renders a list of trucks" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("truck one".to_s), count: 2
  end
end
