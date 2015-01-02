require 'rails_helper'

RSpec.describe "accounts/show", :type => :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :number => "Number",
      :name => "Name",
      :login_url => "Login Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Login Url/)
  end
end
