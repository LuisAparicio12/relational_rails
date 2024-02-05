class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :goals_scored
      t.boolean :player_logged_in
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
