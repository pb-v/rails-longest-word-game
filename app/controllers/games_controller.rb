class GamesController < ApplicationController
  def new
    alphabet = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    @letters_array = 10.times.map { alphabet.sample }
    @letters = @letters_array.join(' ')
    @time = Time.now
  end

  def score
    result = params[:word]
    hidden = params[:hidden]
    array = result.chars
    url = "https://dictionary.lewagon.com/#{result}"
    array.each do |letter|
      if array.count(letter) == hidden.count(letter)
        if url[0] = true
          calculate(result)
        else
          puts 'Your word is not an english word!'
        end
      else
        puts 'You misused the letters you were given!'
      end
    end

    def calculate(result)
      letter_score = result.length * 5
    end
  end
end
