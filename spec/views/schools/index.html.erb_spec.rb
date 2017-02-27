require 'rails_helper'

RSpec.describe "schools/index", type: :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :name => "Name",
        :street_address_1 => "Street Address 1",
        :street_address_2 => "MyText",
        :city => "City",
        :state => "State",
        :zipcode => 2,
        :database => "Database",
        :profile => "Profile"
      ),
      School.create!(
        :name => "Name",
        :street_address_1 => "Street Address 1",
        :street_address_2 => "MyText",
        :city => "City",
        :state => "State",
        :zipcode => 2,
        :database => "Database",
        :profile => "Profile"
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Database".to_s, :count => 2
    assert_select "tr>td", :text => "Profile".to_s, :count => 2
  end
end
