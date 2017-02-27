require 'rails_helper'

RSpec.describe "schools/show", type: :view do
  before(:each) do
    @school = assign(:school, School.create!(
      :name => "Name",
      :street_address_1 => "Street Address 1",
      :street_address_2 => "MyText",
      :city => "City",
      :state => "State",
      :zipcode => 2,
      :database => "Database",
      :profile => "Profile"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Street Address 1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Database/)
    expect(rendered).to match(/Profile/)
  end
end
