class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.integer :number, null: false
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
