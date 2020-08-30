def my_each(array)
  if block_given?
    i = 0
    
  while i < array.length
  yield(array[i])
  i = i + 1
end

array
end
end 


def does_not_call_on(array)
  if block_given?
    i = 0
    
  while i < array.not_to include(".each")
  yield(array[i])
  i = i + 1
end
end 



passengers = {
   suite_a: "Amanda Presley",
   suite_b: "Seymour Hoffman",
   suite_c: "Alfred Tennyson",
   suite_d: "Charlie Chaplin",
   suite_e: "Crumpet the Elf"
}

def select_winner(passengers)
   winner = ""
   passengers.each { |suite, name|
      if suite == :suite_a && name.start_with?("A")
      winner = name
      end
   }
   winner
end

def key_for_min_value(name_hash)
   return nil if name_hash.size == 0
   min_key, min_value = name_hash.first
   name_hash.each do |key, value|
      if value < min_value
      min_key = key #just need the key
      end
   end
   min_key
end


def key_for_min_value(name_hash)
   min_key = nil
   min_value = nil
   name_hash.each do |key, value|
      if min_value == nil || value < min_value
         min_value = value
         min_key = key
      end
   end
   min_key
end