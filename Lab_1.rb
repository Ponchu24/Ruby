#1.1
#puts("Hello World!")

#1.2
#puts "Привет, " + ARGV[0]

#1.3
=begin
ARGV.clear
puts("Какой язык твой любимый?")
lang=gets.chop
=end

#Banana_1
=begin
if lang=="ruby"
  then puts("Ты подлиза!")
else
  if lang=="c#" or lang=="c++"
  then puts("Как скучно!")
  else 
	if lang=="python"
	     then puts("Слишком легко!")
	 else puts("Скоро будет ruby")
	end
  end
end
=end

=begin
#Banana_2
answer = if lang=="ruby"
           "Ты подлиза!"
       else
         if lang=="c#" or lang=="c++"
          "Как скучно!"
         else 
         	if lang=="python"
           "Слишком легко!"
              else "Скоро будет ruby"
            end
         end
       end
puts answer
=end

=begin
#Banana_3
case lang
when "ruby" then puts("Ты подлиза!")
when "c#", "c++" then puts("Как скучно!")
when "python" then puts("Слишком легко!")
else puts("Скоро будет ruby")
end
=end

#1.4
=begin
puts "Введите команду ОС:"
com1 = gets.chop
puts `#{com1}`
puts "Введите команду Ruby:"
com2 = gets.chop
puts eval com2 
=end
