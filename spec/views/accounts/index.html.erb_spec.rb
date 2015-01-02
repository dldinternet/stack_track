require 'rails_helper'

RSpec.describe "accounts/index", :type => :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :number => "Number",
        :name => "Name",
        :login_url => "Login Url"
      ),
      Account.create!(
        :number => "Number",
        :name => "Name",
        :login_url => "Login Url"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Login Url".to_s, :count => 2
  end
end
