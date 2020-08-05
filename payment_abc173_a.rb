# 問題文
# お店で N 円の商品を買います。
# 1000 円札のみを使って支払いを行う時、お釣りはいくらになりますか？
# ただし、必要最小限の枚数の 1000 円札で支払いを行うものとします。
#
# 制約
# 1 ≤ N ≤ 10000
# N は整数

n = ARGV[0].to_i
expect = ARGV[1].to_i

def payment(number)
  remainder = number % 1000
  return 0 if remainder === 0
  1000 - remainder
end

puts "Change: #{change = payment(n)}"
puts "Expect: #{expect}"
puts "Test: #{change === expect}"