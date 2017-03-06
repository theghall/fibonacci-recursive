# fibonacci.rb
#
# 20170306	GH
#
# Find first n numbers in the fibonnaci sequence iteratively
def fibs(n)
  fib_array = []

  (0..n - 1).each do |i|
    if i == 0
      fib_array << 0
    elsif i == 1
      fib_array << 1
    else
      fib_array << fib_array[i - 1] + fib_array[i - 2]
    end
  end
  fib_array
end

p fibs(1)
p fibs(2)
p fibs(8)
