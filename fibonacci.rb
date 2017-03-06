# fibonacci.rb
#
# 20170306	GH
#
# Find first n numbers in the fibonnaci sequence iteratively
require 'byebug'
def fibs(n)
  fib_array = [0, 1]

  (2..n).each do |i|
      fib_array << fib_array[i - 1] + fib_array[i - 2]
  end
  fib_array[0..n]
end

# Find first n number in the fibonacci sequence recursively
def fibs_rec(num, acc = 0, ary = [])
  return num if num <= 1
  acc = fibs_rec(num - 1, acc, ary) + fibs_rec(num - 2, acc, ary)
end

puts("Iteratively determined Fibonacci numbers:")

[0,1,2,7].each do |n|
  puts("The first #{n + 1} fibonacci number(s):")

  puts("=> #{fibs(n)}")
end

puts("Recusivively determined Fibonacci numbers:")

[7].each do |n|
  puts("The first #{n + 1} fibonacci number(s):")

  puts("=> #{fibs_rec(n)}")
end
