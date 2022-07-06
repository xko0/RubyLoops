def sign_up
    puts "Hi! choose a password please."
    print "->"
    password = gets.chomp
    return password
end 

def login(password)
    puts "Enter password"
    print "->"
    password_1 = gets.chomp
    until password_1 == (password)
        puts "Error, try again"
        password_1 = gets.chomp
        print "->"
        
    end
end

def welcome
    puts "Welcome to the real world. Kennedy is still alive !!"
    puts "My mom killed Kurt cobain for his bad influence"
    puts "Egypsian walked on the moon first"
end

def perform
    password = sign_up
    login(password)
    welcome
end

perform