require 'rails_helper'

RSpec.describe "accounts/new", :type => :view do
  before(:each) do
    assign(:account, Account.new(
      :id => "MyString",
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input#account_id[name=?]", "account[id]"

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_url[name=?]", "account[url]"
    end
  end
end
