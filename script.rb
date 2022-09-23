dictionary = ["world","below",
  "down","go","going",
  "horn","how","howdy",
  "it","i","low","own",
  "part","partner","sit",
  "hello","hell"]

def tally_substring(string, dictionary)
  string = string.downcase.split(" ")
  def subtract_letter_from_words(string)
    string.each_with_index do |word, index|
      if word == ''
        next
      end
      word = word.split('')
      word.pop
      word = word.join('')
      string << word
    end
  end
  subtract_letter_from_words(string) 
  common_words = string & dictionary
  common_words.tally
end

tally_substring('Hello the world',dictionary)