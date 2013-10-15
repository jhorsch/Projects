

myphraselong = "Four Score and seven years ago our fathers brought forth on this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal"
# myphrase = myphraselong.scan(/\w+/)
myphrase = myphraselong.split

decodephraseNew = ""
myphrase.each do |every_word|

  lower_every_word = every_word.downcase
  if  lower_every_word[0] == 'a' || lower_every_word[0] == 'e' || lower_every_word[0] == 'i' || lower_every_word[0] == 'o' || lower_every_word[0] == 'u'
      decodephrase = lower_every_word + "ay "
  else
      decodephrase =  lower_every_word[1..-1] + lower_every_word[0] + "ay "
  end

  decodephraseNew << decodephrase
end

puts decodephraseNew
