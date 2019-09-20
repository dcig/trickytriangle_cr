class Board

  BOARD_SIZE = 5
  PEG_MARKER = '•'
  HOLE_MARKER = 'o'
  attr_reader :board
  def initialize
    @board = create_initial_board
  end

  def can_jump?(start,landing)
    start_x = start[0]
    landing_x = landing[0]
    total_x = start_x - landing_x
    start_y = start[1]
    landing_y = landing[1]
    total_y = start_y - landing_y
    return false unless total_x.abs == 2 or total_y.abs == 2
    true 
  end
  #check after code is completed to see if left? method is necessary
  def left?(start,landing)
    start_x = start[1]
    landing_x = landing[1]
    total_x = start_x - landing_x
    return true if total_x == 2
    false
  end

  def right?(start,landing)
    start_x = start[1]
    landing_x = landing[1]
    total_x = start_x - landing_x
    return true if total_x == -2
    false
  end

  def left_or_right(start, landing)
    right?(start, landing) ? "right" : "left"
  end

  def horizontal?(start, landing)
    start_x = start[0]
    landing_x = landing[0]
    return true if start_x == landing_x 
    false
  end

  def diagonal?(start, landing)
    return true unless horizontal?(start, landing)
    false
  end

  def up_or_down?(start, landing)
    start_x = start[0]
    landing_x = landing[0]
    total_x = start_x - landing_x
    total_x == 2 ? "up" : "down"
  end

  def create_initial_board
    number_of_spaces = find_number_of_spaces
    positions = all_positions(number_of_spaces)
    divide_board(positions)
  end

  def find_number_of_spaces
    (BOARD_SIZE * BOARD_SIZE) - BOARD_SIZE
  end

  def all_positions(number_of_spaces)
    positions = Array.new(number_of_spaces, PEG_MARKER)
    positions[0] = HOLE_MARKER
    positions
  end

  def divide_board(positions)
    board = []
    positions.each_with_index do |_a, i|
      board.push(positions.shift(i + 1))
    end
    board
  end

  def print_board
    column_num = 1
    puts "               #{column_num}"
    @board.each_with_index do |row, index|
      column_num += 1
      print "#{map_row_to_alphabet(index)}#{row_front_padding(index)}"
      print_board_row(row)
      print_column_number(column_num)
    end
  end

  def print_board_row(row)
    row.each do |space|
      print "#{space}   "
    end
  end

  def print_column_number(column_number)
     puts (column_number <= BOARD_SIZE ? "#{column_number}" : '')
  end

  def row_front_padding(row_number)
    '  ' * ((BOARD_SIZE + 1) - row_number)
  end

  def map_row_to_alphabet(row_number)
    alphabet = 'A'..'Z'
    rows = alphabet.to_a.first(BOARD_SIZE)
    rows[row_number]
  end

end

#Board.new.print_board
