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
