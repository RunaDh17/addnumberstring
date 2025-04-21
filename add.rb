#Testcases
# 1. Input: “”, Output: 0
# 2. Input: “1”, Output: 1
# 3. Input: “1,15”, Output: 16
# 3. Input: “1,15,20”, Output: 36
# 3. Input: “1,-15,20,-6”, Output: negative numbers not allowed -15,-6


p "Enter string with numbers  "

num_string=gets
num=""
prev=""
current=""
final_numbers=[] # to store all positive numbers in the string
num_neg=[] # to store all negative numbers in the string

#iteration over the each character of string

num_string.chars.each  do |c|
  current=c
 if current.match(/\d/)
  if prev.match(/\d/)     # multidigit number is taken care
   num=num+current  #append digits
  elsif prev== "-"
      num="-" + current #for multi digit negative number
 else
   num=current # take a new number first digit
 end
 else
   if num!="" and num.to_i > 0
     final_numbers<<  num.to_i
  end
   if num!="" and num.to_i < 0
         num_neg<< num.to_i
      end
   num="" #reset to blank when character is found
 end
  prev=current
end

if num_neg.empty?
   puts  "Sum " + final_numbers.sum.to_s  #ruby >2.4
else
    puts "negative numbers not allowed " + num_neg.join(',')
end


