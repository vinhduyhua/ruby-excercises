# kid = 0 - 17,
# adult = 18 - 64
# senior = 65+.

# Check the munster family
# Check the age of each members
# Compare the age to the age range
# Put the appropriate group name to that age range

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  munsters.each do |_, inner_value|
    if (0..17).include? munsters[key]['age']
      munsters[key]['age_group'] = 'kid' 
    elsif (18..64).include? munsters[key]['age']
      munsters[key]['age_group'] = 'adult' 
    else
      munsters[key]['age_group'] = 'senior' 
    end
  end
end

puts munsters
