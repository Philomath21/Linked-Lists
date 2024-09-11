require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts "append :\n#{list}\n "

list.prepend('fish')
puts "list.prepend('fish'): \n#{list}\n "

puts "list.size : #{list.size}\n "

puts "list.head : #{list.head}\n "

puts "list.tail : #{list.tail}\n "

puts "list.at(2) : #{list.at(2)}"
puts "list.at(-2) : #{list.at(-2)}"
puts "list.at(0) : #{list.at(0)}"
puts "list.at(12) : #{list.at(12)}\n "

puts "list.pop : #{list.pop}"
puts list
puts ' '

puts "list.contains?('hamster') : #{list.contains?('hamster')}"
puts "list.contains?('crow') : #{list.contains?('crow')}\n "

puts "list.find('hamster') : #{list.find('hamster')}"
puts "list.find('crow') : #{list.find('crow')}\n "

list.insert_at('hen', 2)
puts "list.insert_at('hen', 2)"
puts list
list.insert_at('hen', 12)
puts "list.insert_at('hen', 12)"
puts list
puts ' '

list.remove_at(3)
puts 'list.remove_at(3)'
puts list
list.remove_at(0)
puts 'list.remove_at(0)'
puts list
puts ' '

puts "list.pop : #{list.pop}"
puts list
puts "list.pop : #{list.pop}"
puts list
puts "list.pop : #{list.pop}"
puts list
puts "list.pop : #{list.pop}"
puts list
puts "list.pop : #{list.pop}"
puts list
puts "list.pop : #{list.pop}"
puts list
p list.tail
