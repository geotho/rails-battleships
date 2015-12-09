class BattleshipGame < ActiveRecord::Base
  has_many :battleships

    def has_ship(i, j)
      self.battleships.each do |battleship|
        return true if battleship.is_at(i, j)
      end
      return false
    end
end
