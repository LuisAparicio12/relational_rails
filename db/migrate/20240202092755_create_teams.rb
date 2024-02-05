class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :num_of_wins
      t.boolean :has_won_championship

      t.timestamps
    end
  end
end
