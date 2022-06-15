# frozen_string_literal: true

# Knight lol
class Knight < Pieces
  def initialize(number, color = white)
    super
    initial_pos
  end

  def initial_pos
    return (@position = number.zero? ? [0, 1] : [0, 6]) if color == white

    @position = number.zero? ? [0, 1] : [0, 6]
  end
end
