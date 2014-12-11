require 'rails_helper'

RSpec.describe "accounts/index", :type => :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :id => "Id",
        :name => "Name",
        :url => "Url"
      ),
      Account.create!(
        :id => "Id",
        :name => "Name",
        :url => "Url"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
