require 'rails_helper'

RSpec.describe "schools/new", type: :view do
  before(:each) do
    assign(:school, School.new(
      :name => "MyString",
      :street_address_1 => "MyString",
      :street_address_2 => "MyText",
      :city => "MyString",
      :state => "MyString",
      :zipcode => 1,
      :database => "MyString",
      :profile => "MyString"
    ))
  end

  it "renders new school form" do
    render

    assert_select "form[action=?][method=?]", schools_path, "post" do

      assert_select "input#school_name[name=?]", "school[name]"

      assert_select "input#school_street_address_1[name=?]", "school[street_address_1]"

      assert_select "textarea#school_street_address_2[name=?]", "school[street_address_2]"

      assert_select "input#school_city[name=?]", "school[city]"

      assert_select "input#school_state[name=?]", "school[state]"

      assert_select "input#school_zipcode[name=?]", "school[zipcode]"

      assert_select "input#school_database[name=?]", "school[database]"

      assert_select "input#school_profile[name=?]", "school[profile]"
    end
  end
end
