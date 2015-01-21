publishers = %w( Marvel DC\ Comix Dark\ Horse )
genres = %w( Detective Superhero Drama Horror )

publishers.each do |p|
  Publisher.create!(name: p)
end

genres.each do |g|
  Genre.create!(title: g)
end
