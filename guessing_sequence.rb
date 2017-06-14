require './messages'

class GuessingSequence
  include Messages

  attr_reader :guess, :number
  def initialize(guess, number)
    @guess = guess
    @number = number
  end

  def human_readable
    if @guess.nil?
      inital_guess
    elsif number.to_s == @guess
      correct_guess
    else
      analyze_guess
    end
  end

  def inital_guess
    start_game_message
  end

  def correct_guess
    winning_message(@number)
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

  def cheat
    cheaters_message
  end
end
