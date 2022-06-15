# frozen_string_literal: true

require_relative 'pieces/knight'

# Pieces lol
class Pieces
  attr_accessor :position

  def initialize(type)
    @position = [0, 0]
  end
end
