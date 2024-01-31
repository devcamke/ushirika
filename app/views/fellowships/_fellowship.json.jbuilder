json.extract! fellowship, :id, :name, :day_of_meeting, :coordinator, :host, :minister, :attendees, :comments, :created_at, :updated_at
json.url fellowship_url(fellowship, format: :json)
json.comments fellowship.comments.to_s
