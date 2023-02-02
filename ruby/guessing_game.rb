# frozen_string_literal: true

class Game
  def initialize
    # @number = rand(10)
    @number = 0
    @allowed_guesses = 0
  end

  def play(allowed_guesses, range)
    generate_number(range)
    @allowed_guesses = allowed_guesses

    while @allowed_guesses.positive?
      print_message('game-start')
      guess = gets
      if compare(guess)
        print_message('correct')
        break
      else
        print_message('incorrect')
      end
      @allowed_guesses -= 1

      print_message('game-over') if @allowed_guesses.zero?
    end
  end

  def compare(guess)
    return true if guess.to_i == @number

    false
  end

  def print_message(type)
    message = {
      'game-start' => "Guess a number, you\'ve got #{@allowed_guesses} tries left.",
      'incorrect' => 'wrong guess, try again.',
      'correct' => "you\'ve guessed right! the correct solution is #{@number}.",
      'game-over' => "no more tries left. Game over. The correct solution was #{@number}."
    }
    puts message[type]
  end

  def generate_number(range)
    @number = rand(range)
  end
end

game = Game.new

game.play(4, 1..10)
