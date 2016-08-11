do |user_name|


def encrypt (user_name)
	user_name_length = user_name.length
	i = 0
	user_name_out = ""
	while i < user_name.length
		if user_name == "z"
			user_name_out += "a"
			i += 1
		else
			user_name_out += user_name[i].next
			i += 1
		end
	end
	puts user_name_out
end






