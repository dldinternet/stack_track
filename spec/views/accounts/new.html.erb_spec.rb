require 'rails_helper'

RSpec.describe "accounts/new", :type => :view do
  before(:each) do
    assign(:account, Account.new(
      :number => "MyString",
      :name => "MyString",
      :login_url => "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input#account_number[name=?]", "account[number]"

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_login_url[name=?]", "account[login_url]"
    end
  end
end
