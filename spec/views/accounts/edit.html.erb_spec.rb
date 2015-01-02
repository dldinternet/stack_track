require 'rails_helper'

RSpec.describe "accounts/edit", :type => :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :number => "MyString",
      :name => "MyString",
      :login_url => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_number[name=?]", "account[number]"

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_login_url[name=?]", "account[login_url]"
    end
  end
end
