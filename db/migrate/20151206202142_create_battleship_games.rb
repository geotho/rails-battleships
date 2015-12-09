class CreateBattleshipGames < ActiveRecord::Migration
  def change
    create_table :battleship_games do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
