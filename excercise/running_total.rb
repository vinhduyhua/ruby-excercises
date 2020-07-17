
require 'pry'

def running_total(array)
  count = 0
  loop do
    if count > 0
      array[count] = array[count] + array[count - 1]
    else
      array[count]
    end
    count += 1
    break if count > array.size - 1
  end
  array
end

# Further explorations

def running_total_inject(array)
  array.inject {|sum, n| sum = sum + n}
end

p running_total_inject([2, 5, 13]) #== [2, 7, 20]
p running_total_inject([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total_inject([3]) #== [3]
p running_total_inject([]) #== []
