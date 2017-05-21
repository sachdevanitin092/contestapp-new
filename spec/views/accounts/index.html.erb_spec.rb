require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :shopify_account_url => "Shopify Account Url"
      ),
      Account.create!(
        :shopify_account_url => "Shopify Account Url"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Shopify Account Url".to_s, :count => 2
  end
end
