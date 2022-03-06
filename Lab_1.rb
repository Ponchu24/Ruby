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

#2.3
#1
def prost num
	if num == 1 then return true end
	num1 = num-1
	while num1 != 1
		if num % num1 == 0 then 
			return false end
		num1 -= 1
	end
	true	
end

def sum_nprost_del num
	res = 0 
	num1 = num
	while num1 != 0
		if !(prost num1) and (num % num1 == 0) 
			then res += num1 
			puts num1
		end 
		num1 -= 1
	end
	res
end 

#2
def count_less_3 num
	res = 0 
	while num != 0
		if num % 10 < 3 then res += 1 end
		num /= 10
	end
	res
end

#3
def vzaim_prost num1, num2
	nod = if num1 > num2 then num2 else num1 end
	while nod > 1 
		if num1 % nod == 0 and num2 % nod == 0 then return false end
		nod -= 1
	end
	true
end

def sum_prost num
	res = 0
	while num != 0
		if prost(num % 10) then res += num % 10 end
		num /= 10
	end
	res
end

def method_3 num
	res = 0
	num1 = num
	while num1 != 0
		if num % num1 != 0 and vzaim_prost num, num1 and !vzaim_prost(num1, sum_prost(num1)) then res += 1 end
		num1 -= 1
	end
	res
end

#3.1

array = []

def get_array
	array = []
	el = gets
	while el != "\n"
		array.append(el.to_i)
		el = gets
	end
	array
end

def array_min array
	min = array[0]
	for i in 0...array.length
		min = if array[i] < min then array[i] else min end
	end
	min
end

def array_max array
	max = array[0]
	for i in 0...array.length
		max = if array[i] > max then array[i] else max end
	end
	max
end

def array_sum array
	sum = 0
	array.each do | el |
		sum += el
	end
	sum
end

def array_mul array
	mul = 1
	array.each do | el |
		mul *= el
	end 
	mul
end

#3.2
=begin
puts "Выберите метод:\n1. Минимальный элемент\n2. Максимальный элемент\n3. Сумма\n4. Произведение"
met_num=gets.chop.to_i
puts "Откуда считать список?\n1. Из файла\n2. С клавиатуры"
from_where=gets.chop.to_i

if from_where == 2 then array = get_array
else
	if from_where == 1 then
		puts "Введите адрес файла"
  		file = gets.chop
  		File.open(file,"r") do |f|
   			while (line = f.gets) 
   				array.append(line.to_i) 
   			end
   		end
    end
end

case met_num
when 1 then puts array_min array
when 2 then puts array_max array
when 3 then puts array_sum array
when 4 then puts array_mul array
else
  	puts "Ошибка"
end
=end

#4.1
=begin
array = [1,-1,3,4,51,6,7]
rev_arr = []
flag = false

min = array.min
max = array.max

array.each do |el|
	if (el == min or el == max) and !rev_arr.empty? then flag = false end
	if flag then rev_arr.append(el) end
	if (el == min or el == max) and rev_arr.empty? then flag = true end
end

rev_arr.reverse!()
if array.index(min) < array.index(max) then array[array.index(min)+1...array.index(max)] = rev_arr else array[array.index(max)+1...array.index(min)] = rev_arr end

puts array
=end

#4.2
=begin
array = [1,-1,3,4,51,6,1,1,7]

puts array.max
array.delete(array.max)
puts array.max

puts array.max(2)
=end

#4.3
=begin
array = [1,-1,3,4,52,6,1,1,7]

puts array.max { |a, b| if b%2!=0 then a <=> b else a end}
=end
 
