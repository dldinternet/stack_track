require 'rails_helper'

RSpec.describe "accounts/edit", :type => :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :id => "MyString",
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_id[name=?]", "account[id]"

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_url[name=?]", "account[url]"
    end
  end
end
