print 'hello world'
puts 'hello world'
p 'hello world'

p 4.8.class
p 4.8.methods

puts "hel\nlo worl\td"
puts 'hel\nlo worl\td'

name = 'taguchi'
puts "hello #{name}"
puts 'hello #{name}'
p name.empty? # false
p name.include?('g') # true
puts name.upcase # TAGUCHI
puts name # taguchi
puts name.upcase! # TAGUCHI
puts name # TAGUCHI

# ハッシュ
scores = { taguchi: 200, fkoji: 400 }
p scores[:taguchi]

# %記号
p %w[red blue] # シングルクォーテーションと同様

p format('id: %05d, rate: %10.2f', 355, 3.284)

# 次のルーブにスキップ
10.times do |i|
  next if i == 7

  p i
end

# クラス
class User
  # 外部からインスタンス変数にアクセスする場合
  attr_accessor :name

  # name=(value)
  # name

  # newが呼ばれた時に呼ばれる
  def initialize(name)
    @name = name
  end

  # メソッド
  def sayHi
    # self.name -> @name
    "hi! i am #{name}"
  end

  # クラスメソッド
  def self.info
    puts 'User class'
  end
end

tom = User.new('tom')
tom.name = 'tom Jr.'
p tom.name
p tom.sayHi
User.info
