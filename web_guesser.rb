require 'sinatra'
require 'sinatra/reloader'
require './messages'
require 'pry'

number = rand(100)

get '/' do
  erb :index, :locals => {:number => number, :message => ''}
   new_guess = GuessingSequence.new(params[:guess], number)
   message = new_guess.biforcate_guess
  erb :index, :locals => {:number => number, :message => message}
end

class GuessingSequence
  include Messages

  attr_reader :guess, :number
  def initialize(guess, number)
    @guess = guess
    @number = number
  end

  def biforcate_guess
    if number.to_s == @guess
      correct_guess
    else
      analyze_guess
    end
  end

  def correct_guess
    winning_message
  end

  def analyze_guess
    guess_int = @guess.to_i
    if guess_int.to_s == @guess && guess_int <= 100 && guess_int >= 1
      high_or_low_guess
    elsif @guess.casecmp('c').zero?
      cheat
    else
      non_integer_guess
    end
  end

  def high_or_low_guess
    if @number < @guess.to_i
      high_guess
    else
      low_guess
    end
  end

  def high_guess
    if (@number + 5) < @guess.to_i
      way_too_high
    else
      too_high
    end
  end

  def low_guess
    if @number > (@guess.to_i + 5)
      way_too_low
    else
      too_low
    end
  end

  def non_integer_guess
    ask_for_integer
  end

  # def cheat
  #   p @number
  #   message = cheaters_message
  #   exit
  # end
end
