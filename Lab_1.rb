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

#2.1
=begin
a = ARGV[0].to_i
b = 0
while a != 0
	b += a % 10
	a /= 10
end
puts b
=end

#2.2
def sum num
	res = 0
	while num != 0
    	res += num % 10
    	num /= 10
    end
	res
end

def max num
	max = num % 10
	num /= 10
	while num != 0
    	max = if num % 10 > max 
    	then num % 10 
    	else max end
    num /= 10
  	end
  	max
end

def min num
	min = num % 10
	num /= 10
	while num != 0
    	min = if num % 10 < min then num % 10 else min end
    num /= 10
  end
  min
end

def mult num
	res = 1
	while num != 0
    	res *= num % 10
    	num /= 10
  	end
  	res
end
