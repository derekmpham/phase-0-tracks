p "How many employees will be processed?"
employees=gets.chomp.to_i

while employees>0

p "What is your name?"
name=gets.chomp.downcase

p "How old are you?"
age=gets.chomp.to_i

p "What year were you born?"
current_year=2016
age_calc=current_year-gets.chomp.to_i

p "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlic=gets.chomp.downcase

p "Would you like to enroll in the company’s health insurance? (Y/N)"
health=gets.chomp.downcase


if name=="drake cula" || name=="tu fang"
	p "Definitely a vampire"
elsif age!=age_calc && garlic=="n" && health=="n"
	p "Almost certainly a vampire"
elsif age!=age_calc && (garlic=="n" || health=="n")
	p "Probably a vampire"
elsif age==age_calc && (garlic=="y" || health=="y")
	p "Probably not a vampire"
else
	p "Results inconclusive"
end

p "Please name any allergies. Put 'done' when finished."
while true
allergies=gets.chomp.downcase
	if allergies=="sunshine"
		p "Probably a vampire"
		break
	end
	if allergies=="done"
		break
	end
end

employees-=1
end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."