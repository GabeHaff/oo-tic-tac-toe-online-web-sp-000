#here are three test files that should be completed in order.
#require_relative '../spec/01_tic_tac_toe_spec.rb'
#tests for our helper methods within #TicTacToe. 
#02_play_spec.rb tests the main #play method. 
##03_cli_spec.rb tests the CLI

class TicTacToe
  
  
  
  WIN_COMBINATIONS = 
[
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6]

]

  
 def initialize(board = nil)
    @board = board || Array.new(9,' ')
 end
  
  
def display_board
  
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  
end
  
def input_to_index(input)
 index = input.to_i-1
end 


 def move(index, character="X")
@board[index] = character
end

def position_taken?(index, character= "X" || "O")
  if @board[index]== " " || @board[index]== ""
return  false
 elsif  @board[index]== nil || @board[index]= character
  return true 
end 
end

def valid_move?(index)
  if index.between?(0,8) && !position_taken?(index)
    return true 
end 
end 

def turn
input = gets.strip
puts "Please enter a number 1-9:"
  index= input_to_index(input)
  if valid_move?(index)
    move(index, current_player)
    display_board
  else
    turn
  end
end
  def turn_count
  @board.reject {|space| space == ' '}.length  
end 

def current_player
 if turn_count % 2 == 0 
   return "X"
   elsif turn_count % 2 != 0
   return "O"
 end 
end 



end 