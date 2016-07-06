class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |c|
      c.belongs_to :deck, index: true
      c.string :question, :unique => true
      c.string :answer

      c.timestamp null: false 
    end
  end
end
