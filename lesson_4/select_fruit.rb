produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  new_hash = Hash.new
  hash.each {|key, value| new_hash[key] = value if value == 'Fruit' }
  new_hash
end

p select_fruit(produce)