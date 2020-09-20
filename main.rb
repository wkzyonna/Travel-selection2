#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
#内容
#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
puts <<~TEXT
旅行プランを番号で選択してください
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000）
TEXT

plan_num = gets.to_i

case plan_num
when 1
  travel(num:1, destination:"沖縄", price:10000)
when 2
  travel(num:2, destination:"北海道", price:20000)
when 3
  travel(num:3, destination:"九州", price:15000)
else
  puts "1〜3番からお選びください"
  exit
end


#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
#メソッド
#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
def travel(num:, destination:, price:)
  puts "#{num}番の#{destination}旅行ですね。"
  puts "人数を選択してください"

  num_people = gets.to_i
  if num_people >= 5
  puts "#{num_people}名ですね。5名以上なので10％割引をさせて頂きます。"
  costs = num_people * price * 90 / 100
  else
    puts "#{num_people}名ですね。"
    costs = num_people * price
  end
  puts "合計料金：#{costs}"
end