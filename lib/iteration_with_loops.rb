def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  total = "" #may need to change this 
  row_index = 0 
  while row_index < src.count do 
    element_index = 0
    while element_index < src[row_index].count do
      
      total = src.flat_map do |items| items.select { |item| item.is_a?(String) }
      end.join(" ")
      
      element_index += 1
    end
    row_index += 1
  end
  total
end


