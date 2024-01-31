FactoryBot.define do
  factory :fellowship do
    name { "MyString" }
    day_of_meeting { 1 }
    coordinator { "MyString" }
    host { "MyString" }
    minister { "MyString" }
    attendees { 1 }
    comments { nil }
  end
end
