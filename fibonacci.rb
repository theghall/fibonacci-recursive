# fibonacci.rb
#
# 20170306	GH
#
# Find first n numbers in the fibonnaci sequence iteratively
def fibs(n)
  fib_array = [0, 1]

  (2..n).each do |i|
      fib_array << fib_array[i - 1] + fib_array[i - 2]
  end
  fib_array[0..n]
end

# Find first n number in the fibonacci sequence recursively
def fibs_rec!(num, ary)
  ary[0] = 0 if ary.empty?
  return 0 if num == 0
  return ary[1] = 1 if num == 1
  ary << next_fib_term = fibs_rec!(num - 1, ary) + fibs_rec!(num - 2, [])
  next_fib_term 
end

puts("Iteratively determined Fibonacci numbers:")

[1, 3, 8].each do |n|
  puts("The first #{n} fibonacci number(s):")

  puts("=> #{fibs(n - 1)}")
end

puts("\n\nRecusivively determined Fibonacci numbers:")

[0, 1, 2, 7].each do |n|
  puts("The first #{n + 1} fibonacci number(s):")

  ary = []
  fibs_rec!(n, ary)
  p ary
end
