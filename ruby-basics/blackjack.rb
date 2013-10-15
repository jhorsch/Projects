# CHALLENGES:
#
# Can you simulate a hand of blackjack?
#
# 1. Randomly choose two cards from a standard deck of 52 cards.
# HINT: Don't worry about the suits.  Just the card value/face matters.
# HINT: Arrays have a #sample method that can (optionally) accept a parameter.
#
# Example Output #1:
# 5 8
#
# Example Output #2:
# Q 6
#
# Example Output #3:
# 2 A
fulldeck = []
myarray = []
13.times do |cardnumber|

  if cardnumber == 9
      myarray = ['J','J','J','J']
  elsif cardnumber == 10
      myarray = ['Q','Q','Q','Q']
  elsif cardnumber == 11
      myarray = ['K','K','K','K']
  elsif cardnumber == 12
      myarray = ['A','A','A','A']
  else
    myarray = [cardnumber+2,cardnumber+2,cardnumber+2,cardnumber+2]
  end

 fulldeck =  fulldeck + myarray



end

#shuffle cards
fulldeck.shuffle!
# puts "There are #{fulldeck.count} cards in the deck"

#draw first card
choose_card = rand 0..51
first_card = fulldeck[choose_card]

#remove first card, shuffle, redraw
fulldeck.slice!(choose_card)
fulldeck.shuffle!

# puts "There are #{fulldeck.count} cards in the deck"
choose_card = rand 0..50
second_card = fulldeck[choose_card]

# puts "Your cards are #{first_card} and #{second_card}"





# 2. Enhance #1 by showing the total score.
# HINT: Consider all aces to have a value of 11.
# Example Output #1:
#
# 5 8
# You have 13.
#
# Example Output #2:
# Q 6
# You have 16.
#
# Example Output #3:
# 2 A
# You have 13.

def cardvalue(card)

  if card == 'J' || card == 'Q' || card == 'K'
      card_vale = 10

  elsif card == 'A'
      card_vale = 11

  else
      card_value = card
  end
end

value1 = cardvalue(first_card)
value2 = cardvalue(second_card)
total_value = value1 + value2
# puts "Your card value is #{total_value}"


# 3. Enhance #2 by adding a card if the score is less than 16.
# Example Output #1:
# 2 A 6
# You have 19.

# Example Output #1:
# Q A
# You have 20.
if total_value < 16

   #remove second card, shuffle, redraw
  fulldeck.slice!(choose_card)
  fulldeck.shuffle!

  # puts "There are #{fulldeck.count} cards in the deck"
  choose_card = rand 0..49
  third_card = fulldeck[choose_card]
  value3 = cardvalue(third_card)
  total_value = value1 + value2 + value3
  myhand = [first_card,second_card,third_card]
  # puts "Your cards are #{myhand}"
  # puts "Your score is #{total_value}"
  # puts "There are #{fulldeck.count} remaining cards in the deck"


else

value1 = cardvalue(first_card)
value2 = cardvalue(second_card)
total_value = value1 + value2
myhand = [first_card,second_card]

# puts "Your cards are #{myhand}"
# puts "Your score is #{total_value}"
# puts "There are #{fulldeck.count} remaining cards in the deck"

end


# 4. Enhance #3 by displaying a message if the score is over 21.
# Example Output #1:
# 7 A 6
# You have 24.
# You're busted!

puts "Your cards are #{myhand}"

if total_value > 21

  if myhand.include?('A')
    total_value = total_value - 10
    puts "Your score is #{total_value}.  You didn't bust because the Ace is worth 1."
  else
    puts "Your score is #{total_value}"
    puts "BUSTED"
  end

elsif total_value == 21
    puts "Your score is #{total_value}"
    puts "BLACKJACK"
else
  puts "Your score is #{total_value}."

end







# 5. Enhance #4 by considering an Ace to be 1 if it would prevent
# the total score from going over 21.
# Example Output #1:
# 4 A 9
# You have 14.


