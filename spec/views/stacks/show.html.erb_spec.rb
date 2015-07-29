require 'rails_helper'

RSpec.describe "stacks/show", :type => :view do
  before(:each) do
    @stack = assign(:stack, Stack.create!(
      :name => "Name",
      :environment_type => "Environment Type",
      :account => nil,
      :environment => "Environment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Environment Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Environment/)
  end
end
