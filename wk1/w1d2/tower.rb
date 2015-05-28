def tower_of_hanoi
  num_disks = set_number_of_disks
  counter = 0
  @pile_one = (1..num_disks).to_a
  @pile_two = []
  @pile_three = []

  while @pile_two.length < num_disks && @pile_three.length < num_disks
    puts "Pile one: " + @pile_one.to_s
    puts "Pile two: " + @pile_two.to_s
    puts "Pile three: " + @pile_three.to_s
    move
    counter += 1
  end
  puts "Congratulations! You completed the game in #{counter} moves!!"
end

def set_number_of_disks
  print "How many disks would you like to start with?"
  number_of_disks = gets.chomp.to_i
  puts "You selected #{number_of_disks} disks"
  number_of_disks
end

def translate num
  return @pile_one if num == 1
  return @pile_two if num == 2
  return @pile_three if num == 3
end

def move
  while true
    print "Choose a pile to move a disk from: "
    from_input = gets.chomp.to_i
    if [1,2,3].include?from_input
      @pile_from = translate from_input
      puts "You chose to pick a disk up from pile #{from_input.to_s}"
      break
    end
      puts "Please select 1, 2 or 3"
  end
  while true
    print "Choose a pile to move the disk to: "
    to_input = gets.chomp.to_i
    if [1,2,3].include?to_input
      @pile_to = translate to_input
      puts "You chose to pick a disk up from pile #{to_input.to_s}"
      break
    end
      puts "Please select 1, 2 or 3"
  end
  move_action
  
end  

def move_action
    if !(error_check @pile_to, @pile_from)
      @pile_to.unshift(@pile_from.shift)
    else
      puts "Invalid move: You can only move smaller disks on top of larger disks!"
    end
end
  
def error_check array_two, array_one
  return false if array_two.empty? 
  return true if array_one.empty?   
  return false if array_two.first > array_one.first
  return true
end

tower_of_hanoi