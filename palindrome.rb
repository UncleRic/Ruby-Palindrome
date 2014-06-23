#!/usr/bin/env ruby
#palindrome 
puts "Palindrome: A word that is same either backwards or forwards spelling; e.g., 'Bob'"

if ARGV.empty?
    puts "\nYou need to enter a word like: 'ruby palindrome.rb turkey'."
    puts "...but no word entered. So I'm quitting.\n\n"
    exit 0
end

@word = ARGV[0]



@word = @word.upcase
@middleIndex = @word.length/2 
@matched = false

puts @word 
puts "middle = #{@middleIndex}"

# -------------------------------------------------

def leftSide()
  x = 0
  y = @word.length-1
  until (x == @middleIndex) do
    @leftChar = @word[x]
    @rightChar = @word[y]
    @matched = (@word[x] == @word[y])
    puts "left= #{@word[x]}; right = #{@word[y]}"
    x = x + 1
    y = y - 1
  end
end

leftSide()
puts "Do we have a palindrome? #{@matched}"

