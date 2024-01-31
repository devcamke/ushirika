class CreateFellowships < ActiveRecord::Migration[7.1]
  def change
    create_table :fellowships do |t|
      t.string :name
      t.integer :day_of_meeting
      t.string :coordinator
      t.string :host
      t.string :minister
      t.integer :attendees

      t.timestamps
    end
  end
end
