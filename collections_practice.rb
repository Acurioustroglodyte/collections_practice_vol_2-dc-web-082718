require 'pry'

def begins_with_r(elems)
  elems.each do |n|
    if n[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(elems)
  sorted_arr = []

  elems.each do |elem|
    if elem.include?("a")
      sorted_arr << elem
    end
  end
  return sorted_arr
end

def first_wa(elems)
  elems.each do |elem|
    if elem[0] == "w" && elem[1] == "a"
      return elem
    end
  end
end

def remove_non_strings(elems)
  elems.delete_if {|elem| !elem.is_a?(String)}
end

def count_elements(people)
  binding.pry
  people_counted = people.uniq!
  binding.pry
  people_counted.each do |person|
    person[:count] = people.count(person)
    binding.pry
  end
  people_counted
end

 count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

def merge_data(data1, data2)
  new_data = data1.merge(data2)
end

def find_cool(hashes)
  hashes.each do |hash|
    puts hash
  end
end
