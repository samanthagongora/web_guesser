module Messages
  def start_game_message
    'I have generated a random number (1 - 100) for you to guess.'
  end

  def ask_for_guess
    'What is your guess?'
  end

  def ask_for_integer
    'Please enter an integer between 1 and 100.'
  end

  def winning_message(number)
    "You got it right! The secret number is #{number}."
  end

  def way_too_high
    'Your guess is way too high. Guess again.'
  end

  def too_high
    'Your guess is too high. Guess again.'
  end

  def way_too_low
    'Your guess is way too low. Guess again.'
  end

  def too_low
    'Your guess is too low. Guess again.'
  end

  def cheaters_message(number)
    "The secret number is #{number}"
  end
end
