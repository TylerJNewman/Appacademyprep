
def num_to_base (num, base)
  output = []
  pow = 0
  until num / (base ** pow) == 0
    output.push ((num / base ** pow) % 2).to_s
    pow += 1
  end
  puts output.join
end

num_to_base (234,2)
