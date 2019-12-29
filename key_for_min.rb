# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(name_hash)
  lowest_value = name_hash.values[0]
  name_hash.collect do |name, value|
      if value < lowest_value
        lowest_value = value
      end
  end
  lowest_value
end

veggies = {"apple" => -45, "banana" => -44.5, "carrot" => -44.9}
puts key_for_min_value(veggies)
