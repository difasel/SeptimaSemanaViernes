class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |r|
      r.belongs_to :user, index: true
      r.string :deck_name
      r.integer :correct_answers
      r.timestamp null: false
    end
  end
end
