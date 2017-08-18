# Ask the user for their gender.
puts "Hi there. I will tell you what to wear today. First, are you male or female? Please type."
gender = gets.chomp.downcase

# Error check - if they answer anything other than male or female, loop the question until the answer is valid.
loop do
		if gender != "male" && gender != "female"
				print "Please enter either male or female."
				gender = gets.chomp.downcase
		end
		break if (gender == "male") || (gender == "female")
end

# Ask for the temperature and error check - if they enter something other than an integer, run a rescue to ask them to try again.
begin
		print "What is the temperature (in celsius)?"
		temperature = Integer(gets.chomp)
rescue ArgumentError
		puts "That is not a temperature. Please try again."
		retry
end

# Set results based on gender and weather.
if (gender == "male") && (temperature > 20)
		puts " It's hot, wear shorts!"
elsif (gender == "male") && (temperature == 20)
		puts " It's beautiful weather, wear whatever you like!"
elsif (gender == "male") && (temperature < 20)
		puts " It's cold, don't wear shorts!"
elsif (gender == "female") && (temperature > 20)
		puts " It's hot, wear a skirt (or shorts)!"
elsif (gender == "female") && (temperature == 20)
		puts " It's beautiful weather, wear whatever you like!"
elsif (gender == "female") && (temperature < 20)
		puts " It's cold, don't wear a skirt (or shorts)!"
end
