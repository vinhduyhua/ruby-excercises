# Find all male
# Find all male age
# Calculate total age of male

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_age = 0
munsters.each do |_, value|
  if value["gender"] == "male"
    male_age = value["age"] + male_age
  end
end
p male_age