# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |n|
  Test.create!(
    content: "サンプル問題です#{n + 1}",
    choice1: "サンプル選択肢#{n + 1}",
    choice2: "サンプル選択肢#{n + 1}",
    choice3: "サンプル選択肢#{n + 1}",
    choice4: "サンプル選択肢#{n + 1}",
    answer: "3"
  )
end