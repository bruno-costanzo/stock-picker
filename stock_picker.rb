def stock_picker (daily_values)
  buy = 0
  sell = 0
  starting_value = daily_values[1]
  business = 0
  inv = []
  daily_values.each_with_index do |starting_point, start_idx|
    daily_values[start_idx..-1].each_with_index do |road_point, end_idx|
      if road_point - starting_point > business
        business = road_point - starting_point
        inv = [start_idx, start_idx + end_idx]
      end
    end
  end
 inv
end


puts stock_picker([17,3,6,9,15,8,6,1,10,85, 78, 94, 93, 92, 91])