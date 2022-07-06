def half_pyramid
    puts "Hi welcome to my pyramide ! How many floors do you want ?"
    print "->"
    floors = gets.chomp.to_i
    until floors <= 25 and floors > 0
    puts "Make it less than 26 please"
    print "->"
    floors = gets.chomp.to_i
    return floors
    end
    print "here it comes !"
    for n in 0..floors
    (floors-n).times {print " "}
	n.times {print "#"}
	puts
    end
end

half_pyramid