load 'kingdom.rb'

def min_bombs(kingdoms)
  return 0 if kingdoms.count == 0
  kingdoms.sort!
  count = 1
  previous_b = kingdoms[0].b
  kingdoms.each do |kingdom|
    if kingdom.a > previous_b
      previous_b = kingdom.b
      count += 1
    end
  end
  count
end

f = File.new('input.txt')
lines = f.readlines
i = 0
test_count = lines[i].to_i
i += 1
1.upto(test_count) do
  kingdom_count = lines[i].to_i
  i += 1
  kingdoms = []
  1.upto(kingdom_count) do
    kingdoms.push(Kingdom.new(lines[i]))
    i += 1
  end
  puts min_bombs(kingdoms)
end
