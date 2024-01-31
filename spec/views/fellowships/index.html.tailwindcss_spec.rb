require 'rails_helper'

RSpec.describe "fellowships/index", type: :view do
  before(:each) do
    assign(:fellowships, [
      Fellowship.create!(
        name: "Name",
        day_of_meeting: 2,
        coordinator: "Coordinator",
        host: "Host",
        minister: "Minister",
        attendees: 3,
        comments: nil
      ),
      Fellowship.create!(
        name: "Name",
        day_of_meeting: 2,
        coordinator: "Coordinator",
        host: "Host",
        minister: "Minister",
        attendees: 3,
        comments: nil
      )
    ])
  end

  it "renders a list of fellowships" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Coordinator".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Host".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Minister".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
