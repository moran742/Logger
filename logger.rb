def get_word(word)
	x =[]
	logFile = File.open(ARGV[0]).collect do |line|
		if line.downcase.match(word)
			x.push(line)
			puts x.length.to_s + ". " + line
		end
	end
end

unless ARGV.length == 3
	puts "You need to enter 2 words to search for until I fix this script"
	exit
end

puts "-----------------------------------"
puts "The following " + ARGV[1].upcase + " were found:"
puts "-----------------------------------"
get_word(ARGV[1])
puts
puts "-----------------------------------"
puts "The following " + ARGV[2].upcase + " were found:"
puts "-----------------------------------"
get_word(ARGV[2])
