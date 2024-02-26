require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [ 
      FactoryBot.create(:customer),   
      FactoryBot.create(:customer)
    ])
  end

  it "renders a list of customers" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("David Weaver".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("000-000-0000".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("customer@example.com".to_s), count: 2
  end
end
