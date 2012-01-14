def get_word(word)
	x =[]
	File.open(ARGV[0]).collect do |line|
		if line.downcase.match(word)
			x.push(line)
			puts x.length.to_s + ". " + line
		end
	end
end

def find_word(words)
	words.collect do |word|
	puts "-----------------------------------"
	puts "The following line(s) were found that contain " + word.upcase + ":"
	puts "-----------------------------------"
	get_word(word)
	puts
	puts
	end
end

# ####BEGININING OF SCRIPT
words_to_find = ARGV.drop(1)
words_to_find.collect { |word| puts word }
if words_to_find.length == 0
	puts "Help section coming soon!"
	exit
else
	find_word(words_to_find)
end