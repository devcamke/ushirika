require 'rails_helper'

RSpec.describe "fellowships/show", type: :view do
  before(:each) do
    assign(:fellowship, Fellowship.create!(
      name: "Name",
      day_of_meeting: 2,
      coordinator: "Coordinator",
      host: "Host",
      minister: "Minister",
      attendees: 3,
      comments: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Coordinator/)
    expect(rendered).to match(/Host/)
    expect(rendered).to match(/Minister/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
