def multiples(multiples_of, count)
  (multiples_of .. count).step(multiples_of) do |i|
    yield i
  end
end

def print_multiples(multiples_of, count)
  multiples(multiples_of, count) do |i|
    puts i
  end
end

puts  "Hey whats going on! lets display multiples of a number"
puts "Now be precise and give me the number and the last multiple you want me to go to"
STDOUT.flush 
multiple = gets.chomp 
STDOUT.flush
count = gets.chomp 

print_multiples(multiple.to_i, count.to_i)  

