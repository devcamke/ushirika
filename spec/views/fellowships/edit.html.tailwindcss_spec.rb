require 'rails_helper'

RSpec.describe "fellowships/edit", type: :view do
  let(:fellowship) {
    Fellowship.create!(
      name: "MyString",
      day_of_meeting: 1,
      coordinator: "MyString",
      host: "MyString",
      minister: "MyString",
      attendees: 1,
      comments: nil
    )
  }

  before(:each) do
    assign(:fellowship, fellowship)
  end

  it "renders the edit fellowship form" do
    render

    assert_select "form[action=?][method=?]", fellowship_path(fellowship), "post" do

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
