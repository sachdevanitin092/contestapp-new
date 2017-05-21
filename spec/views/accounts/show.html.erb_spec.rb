require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :shopify_account_url => "Shopify Account Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Shopify Account Url/)
  end
end
