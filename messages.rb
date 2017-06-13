module Messages
  def start_game_message
    p 'I have generated a random number (1 - 100) for you to guess.'
  end

  def ask_for_guess
    p 'What is your guess?'
  end

  def ask_for_integer
    p 'Please enter an integer between 1 and 100.'
  end

  def winning_message
    p 'You guessed the right number!'
  end

  def way_too_high
    p 'Your guess is way too high. Guess again.'
  end

  def too_high
    p 'Your guess is too high. Guess again.'
  end

  def way_too_low
    p 'Your guess is way too low. Guess again.'
  end

  def too_low
    p 'Your guess is too low. Guess again.'
  end

  def cheaters_message
    p 'Cheaters never win!'
  end
end
