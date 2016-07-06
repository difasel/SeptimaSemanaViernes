class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |d|
      d.string :name_deck, :unique => true

      d.timestamp null: false
    end
  end
end
