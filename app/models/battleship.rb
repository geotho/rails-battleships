class Battleship < ActiveRecord::Base
  belongs_to :battleship_game

  def is_at(i, j)
    if self.orientation == "horizontal"
      return i == self.row && (0...self.length).cover?(j - self.column)
    else
      return j == self.column && (0...self.length).cover?(i - self.row)
    end
  end

end
