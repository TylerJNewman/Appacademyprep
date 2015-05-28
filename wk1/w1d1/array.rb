def my_uniq(array)
  new_array = []
  
  array.each do |i|
    new_array << i unless new_array.include? i
  end
  
  new_array
end

class Array
  def my_uniq
    new_array = []
    self.each do |i|
      new_array << i unless new_array.include? i
    end
    new_array
  end
end

class Array
  def two_sum
    sum_pairs = []
    
    self.length.times do |i1|
      (i1 + 1).upto(array.length - 1) do |i2|
        sum_pairs << [i1, i2] if (array[i1] + array[i2] == 0)
      end
    end
    
    sum_pairs
  end
end

def my_transpose(matrix)
  result_matrix = []
  
  matrix.length.times do |i|
    new_array = []
    
    matrix.each do |array|
      new_array << array[i]
    end
    
    result_matrix << new_array
  end
  
  result_matrix
end

def stock_pick(prices)
  greatest_profit = 0
  best_pair = nil
  
    prices.each_index do |buy|
      (buy + 1).upto(prices.length - 1) do |sell|
        profit = array[sell] - array[buy]
        if (profit > greatest_profit)
          greatest_profit = profit
          best_pair = [buy,sell]
        end
      end
    end
    best_pair
end
