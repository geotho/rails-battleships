class RenameBattleshipGame < ActiveRecord::Migration
  def change
    rename_column :battleships, :BattleshipGame_id, :battleship_game_id
  end
end
