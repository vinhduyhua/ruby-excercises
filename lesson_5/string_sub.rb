# Given this previously seen family hash, print out the name, age and gender of each family member:
# Print name, age, gender
# Repeat for every one in the family
# Example: (Name) is a (age)-year-old (male or female).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  name = key
  age = value["age"]
  sex = value["gender"]
  puts "#{name} is a #{age}-year-old #{sex}."
end
