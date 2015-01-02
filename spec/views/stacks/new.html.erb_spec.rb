require 'rails_helper'

RSpec.describe "stacks/new", :type => :view do
  before(:each) do
    assign(:stack, Stack.new(
      :name => "MyString",
      :environment_type => "MyString",
      :account => nil,
      :environment => "MyString"
    ))
  end

  it "renders new stack form" do
    render

    assert_select "form[action=?][method=?]", stacks_path, "post" do

      assert_select "input#stack_name[name=?]", "stack[name]"

      assert_select "input#stack_environment_type[name=?]", "stack[environment_type]"

      assert_select "input#stack_account_id[name=?]", "stack[account_id]"

      assert_select "input#stack_environment[name=?]", "stack[environment]"
    end
  end
end
