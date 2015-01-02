require 'rails_helper'

RSpec.describe "stacks/index", :type => :view do
  before(:each) do
    assign(:stacks, [
      Stack.create!(
        :name => "Name",
        :environment_type => "Environment Type",
        :account => nil,
        :environment => "Environment"
      ),
      Stack.create!(
        :name => "Name",
        :environment_type => "Environment Type",
        :account => nil,
        :environment => "Environment"
      )
    ])
  end

  it "renders a list of stacks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Environment Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Environment".to_s, :count => 2
  end
end
