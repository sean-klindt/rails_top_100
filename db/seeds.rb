@week_nums = [1..52]

100.times do
  Billboard.create(
    album: Faker::Music.album,
    week_num: @week_nums.sample
  )
end


puts 'data seeded'