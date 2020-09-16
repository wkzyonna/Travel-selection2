puts <<~TEXT
旅行プランを番号で選択してください
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000）
TEXT

plan = gets.to_i

if plan == 1
  puts "#{plan}番の沖縄旅行ですね。"
elsif plan == 2
  puts "#{plan}番の北海道旅行ですね。"
elsif plan == 3
  puts "#{plan}番の九州旅行ですね。"
else
  puts "1〜3番からお選びください。"
end


puts "人数を選択してください"

num_people = gets.to_i

if num_people >= 5 && plan == 1
  puts "#{num_people}名ですね。5名以上なので10％と割引をせせて頂きます。"
  costs = num_people * 10000 * 90/100
  puts "合計料金：#{costs}"
elsif num_people >= 5 && plan == 2
  puts "#{num_people}名ですね。5名以上なので10％と割引をせせて頂きます。"
  costs = num_people * 20000 * 90/100
  puts "合計料金：#{costs}"
elsif num_people >= 5 && plan == 3
  puts "#{num_people}名ですね。5名以上なので10％と割引をせせて頂きます。"
  costs = num_people * 15000 * 90/100
  puts "合計料金：#{costs}"
else
  if num_people <= 4 && plan == 1
    puts "#{num_people}名ですね。"
    costs = num_people * 10000
    puts "合計料金：#{costs}"
  elsif num_people <= 4 && plan == 2
    puts "#{num_people}名ですね。"
    costs = num_people * 20000
    puts "合計料金：#{costs}"
  elsif num_people <= 4 && plan == 3
    puts "#{num_people}名ですね。"
    costs = num_people * 15000
    puts "合計料金：#{costs}"
  end
end


# if num_people >= 5 and plan2
#   puts "#{num_people}名ですね。5名以上なので10％と割引をせせて頂きます。"
#   costs = num_people * plan2 * 90/100
#   puts "合計料金：#{costs}"
# elsif num_people <= 4 and plan2
#   puts "#{num_people}名ですね。"
#   costs = num_people * plan2
#   puts "合計料金：#{costs}"
# end


# if num_people >= 5 and plan == 3
#   puts "#{num_people}名ですね。5名以上なので10％と割引をせせて頂きます。"
#   costs = num_people * plan3 * 90/100
#   puts "合計料金：#{costs}"
# elsif num_people <= 4 and plan3
#   puts "#{num_people}名ですね。"
#   costs = num_people * plan3
#   puts "合計料金：#{costs}"
# end