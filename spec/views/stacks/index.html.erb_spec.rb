require 'rails_helper'

RSpec.describe "stacks/index", :type => :view do
  before(:each) do
    assign(:stacks, [
      Stack.create!(
        :name => "Name",
        :env_type => "Env Type",
        :account => nil
      ),
      Stack.create!(
        :name => "Name",
        :env_type => "Env Type",
        :account => nil
      )
    ])
  end

  it "renders a list of stacks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Env Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
