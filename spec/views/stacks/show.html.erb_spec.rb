require 'rails_helper'

RSpec.describe "stacks/show", :type => :view do
  before(:each) do
    @stack = assign(:stack, Stack.create!(
      :name => "Name",
      :env_type => "Env Type",
      :account => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Env Type/)
    expect(rendered).to match(//)
  end
end
