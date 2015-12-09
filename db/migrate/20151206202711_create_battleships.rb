class CreateBattleships < ActiveRecord::Migration
  def change
    create_table :battleships do |t|
      t.integer :length
      t.string :orientation
      t.integer :row
      t.integer :column
      t.references :BattleshipGame, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
