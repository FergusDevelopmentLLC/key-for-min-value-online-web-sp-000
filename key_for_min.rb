# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(name_hash)
  if(name_hash == nil)
    return nil
  else
    key, value = name_hash.first
    desired_key = key
    name_hash.collect do |name, this_value|
        if this_value < value
          value = this_value
          desired_key = name
        end
    end
    desired_key
  end
end

veggies = {"apple" => -450, "banana" => -74.5, "carrot" => -84.9}
puts key_for_min_value(veggies)
