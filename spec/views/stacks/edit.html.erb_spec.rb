require 'rails_helper'

RSpec.describe "stacks/edit", :type => :view do
  before(:each) do
    @stack = assign(:stack, Stack.create!(
      :name => "MyString",
      :env_type => "MyString",
      :account => nil
    ))
  end

  it "renders the edit stack form" do
    render

    assert_select "form[action=?][method=?]", stack_path(@stack), "post" do

      assert_select "input#stack_name[name=?]", "stack[name]"

      assert_select "input#stack_env_type[name=?]", "stack[env_type]"

      assert_select "input#stack_account_id[name=?]", "stack[account_id]"
    end
  end
end
