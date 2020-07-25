# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.
 
# Example: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
 
# Contain colors of the fruits
# Size of the vegetables
# Return array

# Iterate through the hash
# Check if the type is fruits
# Return color
# Check if the type is vegetable
# Return size
# Return an array containing the return color and size
 
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_hsh = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map {|color| color.capitalize }
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p new_hsh