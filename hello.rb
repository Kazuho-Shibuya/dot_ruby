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

  VERSION = 1.1
  @@count = 0

  # newが呼ばれた時に呼ばれる
  def initialize(name)
    @@count += 1
    @name = name
  end

  # メソッド
  def sayHi
    # self.name -> @name
    puts "hi! i am #{name}"
  end

  # クラスメソッド
  def self.info
    puts "#{VERSION}: User class, #{@@count} instances."
  end

  private

  def sayPrivate
    puts 'private'
  end
end

tom = User.new('tom')
bob = User.new('bob')
steve = User.new('steve')

User.info
p User::VERSION

# クラスの継承
class AdminUser < User
  def sayHello
    puts "Hello from #{@name}"
  end

  # メソッド
  def sayHi
    # オーバーライド
    puts 'hi! i from admin'
    sayPrivate
  end
end

tom = AdminUser.new('tom')
tom.sayHi
tom.sayHello

# module
# - 名前空間

module Movie
  VERSION = 1.1
  def self.encode
    puts 'encoding...'
  end

  def self.export
    puts 'exporting...'
  end
end

Movie.encode
Movie.export
p Movie::VERSION

# module
# - ミックスイン
module Debug
  def info
    puts "#{self.class} debug info ..."
  end
end

class Player
  include Debug
end

class Monster
  include Debug
end

Player.new.info
Monster.new.info

# 例外
x = gets.to_i

class MyError < StandardError; end

begin
  raise MyError if x == 3

  p 100 / x
rescue MyError
  puts 'not 3!'
rescue StandardError => e
  p e.message
  p e.class
  puts 'stop'
ensure
  puts '-- END --'
end
