class Board

  def initialize(grid = nil)
    @grid = Array.new(8) {Array.new(8)}
    default_board
  end

  def default_board
    @grid[1].each do |piece|
      piece = Pawn.new
    end

    @grid[6].each do |piece|
      piece = Pawn.new
    end

    @grid[0][0] = Rook.new
    @grid[0][7] = Rook.new
    @grid[7][0] = Rook.new
    @grid[7][7] = Rook.new

    @grid[0][1] = Knight.new
    @grid[0][6] = Knight.new
    @grid[7][1] = Knight.new
    @grid[7][6] = Knight.new

    @grid[0][2] = Bishop.new
    @grid[0][5] = Bishop.new
    @grid[7][2] = Bishop.new
    @grid[7][5] = Bishop.new

    @grid[0][3] = Queen.new
    @grid[7][3] = Queen.new

    @grid[0][4] = King.new
    @grid[7][4] = King.new
  end

  def move(start, end_pos)
    new_grid = replicate_board
  end

  def replicate_board
    new_grid = []

    @grid.each do |row|
      new_grid << row.dup
    end
    new_grid
  end


end
