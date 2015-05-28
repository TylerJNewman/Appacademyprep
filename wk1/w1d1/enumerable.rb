def median(array)
  ary = array.sort
  i = ary.length/2
  return ((ary[i] + ary[i-1])/2.0) if (ary.length % 2 == 0)
  return ary[i]
end

puts(
  'median([1,2,3]) == "2": ' + (median([1,2,3]) == 2).to_s + median([1,2,3]).to_s 
)

puts(
  'median([1,2,3,4]) == "2.5": ' + (median([1,2,3,4]) == 2.5).to_s + median([1,2,3,4]).to_s
)
