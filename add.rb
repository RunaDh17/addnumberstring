#Testcases
# 1. Input: “”, Output: 0
# 2. Input: “1”, Output: 1
# 3. Input: “1,5”, Output: 6
##Allow the add method to handle any amount of numbers.

###Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)

p "Enter string with numbers  "

num_string=gets
#p num_string.gsub(/\D/, '')
num=0
num_string.chars.each  do |c|
  current=c
 if current.match(/\d/)
   num=num+c.to_i
 end
end
p num


