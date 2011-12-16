full_song = "12 Drummers Drumming
11 Pipers Piping
10 Lords-a-Leaping
9 Ladies Dancing
8 Maids-a-Milking
7 Swans-a-Swimming
6 Geese-a-Laying
5 Gold Rings
4 Colly Birds
3 French Hens
2 Turtle Doves
a Partridge in a Pear Tree."

array = full_song.split("\n").reverse

days = []
days << "first" << "second" << "third" << "fourth" << "fifth" << "sixth"
days << "seventh" << "eighth" << "ninth" << "tenth" << "eleventh" << "twelfth"

days.each_index do |index|
  print "On the "+days[index]+" of christmas my true love gave to me "+array[index]
  if index < 1
    puts "" 
  else 
    puts "," 
  end
  if index > 0
    i = index-1
    index.downto(0) {
      if i == 0
        puts "And "+array[i] 
      elsif i > 0
        puts array[i]+"," 
      end
      i = i - 1
    }
  end
end



