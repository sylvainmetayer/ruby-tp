#!/usr/bin/ruby

input="Aujourd'hui nous décrouvrons le framework Ruby On Rails a ab abc abcd"

class String
  def shuffle_word(word)

    shuffle=word[0]
    word.slice!(0)

    if word.size > 0
      lastLetter = word[word.size-1]
      word.slice!(word.size-1)
    else
      return shuffle
    end

    if word.size > 0
      while word.size > 1 do
        random=rand(0...word.size)
        letter = word[random]
        shuffle+= letter
        word.slice!(random)
      end
      shuffle += word[0]
    end

    shuffle += lastLetter

    return shuffle
  end

  def shuffle_sentence
    self.split(" ").each do |word|
      puts shuffle_word(word)
    end
  end
end

input.shuffle_sentence

# monkey patching --> A eviter
