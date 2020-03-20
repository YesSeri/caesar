def caesarShift (string, shift)
	stringArray = string.split("")
	result = ""
	stringArray.each do |w|
		a = w.ord
		temp_shift = shift
		if (w.match(/\W/))
			temp_shift = 0		
		elsif w.upcase == w
			while (a + temp_shift > 90) do
				temp_shift -= 26
			end
		else
			while a + temp_shift > 122 do
				temp_shift -= 26
			end
		end
		result += (a + temp_shift).chr
	end
	result
end

def program
	puts "Enter message:"
	string = gets.chomp
	if string.downcase == "exit"
		exit
	end
	puts "Enter shift: "
	shift = " "
	while !shift.match(/\d+/) do
		shift = gets.chomp
	end
	shift = shift.to_i
	puts "Coded message: #{caesarShift(string, shift)}\nEnter exit to quit"
	puts ""
end

while true do
	program()
end