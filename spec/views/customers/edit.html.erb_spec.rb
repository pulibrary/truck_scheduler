require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  let(:customer) {
    FactoryBot.create(:customer)
  }

  before(:each) do
    assign(:customer, customer)
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(customer), "post" do

      assert_select "input[name=?]", "customer[name]"

      assert_select "input[name=?]", "customer[phone]"

      assert_select "input[name=?]", "customer[email]"
    end
  end
end
