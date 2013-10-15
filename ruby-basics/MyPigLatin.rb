

myphraselong = "Four score and seven years ago our fathers brought forth on this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal"
myphrase = myphraselong.scan(/\w+/)


decodephrase = ""
decodephraseNew = ""
myphrase.each do |counter|



  if  counter[0].downcase == 'a' || counter[0].downcase == 'e' || counter[0].downcase == 'i' || counter[0].downcase == 'o' || counter[0].downcase == 'u'
      decodephrase = counter.downcase + "ay "
  else
      decodephrase =  counter[1..-1] + counter[0].downcase + "ay "
  end

  decodephraseNew = decodephraseNew + decodephrase
end

puts decodephraseNew
