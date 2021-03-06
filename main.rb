#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
#プラン定義
#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
plans = [
  {place:"沖縄旅行", price:10000},
  {place:"北海道旅行", price:20000},
  {place:"九州旅行", price:15000},
  {place:"奈良旅行", price:2000}
]

#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
#プラン選択
#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

puts "旅行プランを番号で選択してください"

plans.each.with_index(1) do |plan,i|
  puts "#{i}.#{plan[:place]}(￥#{plan[:price]})"
end

plan_num = gets.to_i
if plan_num >= plans.size && plan_num >= 1
  plan = plans[plan_num - 1]
  puts "#{plan[:place]}ですね。"
else
  puts "不適切な数字です。1〜3からお選び下さい。"
  exit
end

#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
#人数選択
#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
puts "人数を選択してください"

num_people = gets.to_i
if num_people >= 5
  puts "#{num_people}名ですね。5名以上なので10％割引をさせて頂きます。"
elsif num_people <= 4 && num_people >= 1
  puts "#{num_people}名ですね。"
else
  puts <<~TEXT
  不適切な数字です
  1名以上から選択出来ます。
  TEXT
  exit
end

#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
#合計
#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
def total_price(num_people, price)
  if num_people >= 5
    total_price = num_people * price * 90/100
  else
    total_price = num_people * price
  end
  puts "合計料金：#{total_price}"
end
total_price(num_people, plan[:price])