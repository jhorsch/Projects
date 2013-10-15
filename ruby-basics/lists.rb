# LISTS
# -------------
#
# Change this array to match the people at your table
people = ["Jeff", "Neal", "Mike", "Vince"]

# Example 1: How many names do we have?
number_of_people = people.count
puts number_of_people

# CHALLENGE #1: Can you display the first name in the list?
people.first


# CHALLENGE #2: Can you display the last name in the list?

people.last

# CHALLENGE #3: Can you display the third name in the list?
people[2]


# CHALLENGE #4: Can you display a random name from the list?
people.sample

# CHALLENGE #5: Can you add a new name to the end of the list,
# and then prove that it worked?
people << "Jeff"


# HASHES
# -------------

# Feel free to modify the data :-)
favorites = { "color" => "Purple", "number" => 3, "fruit" => "cookies" }

# CHALLENGE #6: Can you display your favorite color?
favorits["color"]

# CHALLENGE #6: Can you add the title of your favorite song?
favorites["song"]="Teen Spirit"

# CHALLENGE #7: Can you add a list of your friends' names?
# For example,
#    puts favorites["friends"]
#
# should return the list of the names of your friends.


