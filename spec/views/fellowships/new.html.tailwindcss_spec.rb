require 'rails_helper'

RSpec.describe "fellowships/new", type: :view do
  before(:each) do
    assign(:fellowship, Fellowship.new(
      name: "MyString",
      day_of_meeting: 1,
      coordinator: "MyString",
      host: "MyString",
      minister: "MyString",
      attendees: 1,
      comments: nil
    ))
  end

  it "renders new fellowship form" do
    render

    assert_select "form[action=?][method=?]", fellowships_path, "post" do

      assert_select "input[name=?]", "fellowship[name]"

      assert_select "input[name=?]", "fellowship[day_of_meeting]"

      assert_select "input[name=?]", "fellowship[coordinator]"

      assert_select "input[name=?]", "fellowship[host]"

      assert_select "input[name=?]", "fellowship[minister]"

      assert_select "input[name=?]", "fellowship[attendees]"

      assert_select "input[name=?]", "fellowship[comments]"
    end
  end
end
