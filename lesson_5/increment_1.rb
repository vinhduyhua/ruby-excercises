new_arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  new_hash = Hash.new
  hash.each {|key, value| new_hash[key] = value += 1}
  hash = new_hash
end

p new_arr