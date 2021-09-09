100.times do
  album = Billboard.create(
    album: Faker::Music.album
  )
end


puts 'data seeded'