def player_1
    puts "Hi ! wanna play ?"
    print "->"
    answer = gets.chomp.to_s
    if answer == ("yes")
        puts "Here we go !"
    else 
        exit
    end
end

def game_rules
    puts "rules :"
    puts "10 stairs up to go, throw the dice one per turn."
    puts "5 or 6 take you up 1 step"
    puts "1 take you down 1 step"
    puts "2, 3, 4 nothing happen"
    puts "7 you win, i'll give you my wife, my car and everything."
end

def roll
    puts "Throw the dice !"
    gets
    dice_value = rand(1..6)
    puts "Dice rolled, it gives : #{dice_value}"
    return dice_value
end

def game(dice_value)
    if dice_value == 5 || dice_value == 6
        puts "You go up 1 step"
        step = 1
    elsif dice_value == 1
        puts ":( you go down 1 step"
        step = -1
    else
        puts "Nothing happened"
        step = 0
    end
end

def move(dice_value)
    position = 1
    turns_counter = 0
    while position != 10
        dice_value = roll
        step = game(dice_value)
        position =  position + step
        if position <= 0
            position = 1
        end
        puts "you're on step number #{position}"
        turns_counter += 1
    end
    puts "you needed #{turns_counter} moves to go up the stairs !"
    return turns_counter
end


def play
    answer = player_1
    game_rules
    dice_value = roll
    game(dice_value)
    move(dice_value)
end

play