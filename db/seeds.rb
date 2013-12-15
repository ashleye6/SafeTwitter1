# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'Adding seed tv shows?'
Tvshow.create title: "Breaking Bad",
             image: 'http://www.thecampuscompanion.com/party-lab/files/2012/09/breaking-bad-drinking-game-1024x640.png'

Tvshow.create title: "Scandal",
             image: 'http://ia.media-imdb.com/images/M/MV5BMTUwMTQyMTIwMV5BMl5BanBnXkFtZTcwNjI1MzU2Nw@@._V1_.jpg'

Tvshow.create title: "Game of Thrones",
             image: 'http://thedrawshop.com/wp-content/uploads/2013/08/game-of-thrones-season-4.jpg'

puts 'Done adding tv shows'

puts 'Adding phrases?'
Phrase.create text: "Olivia Pope",
              tvshow_id: ''

Phrase.create text: "Walt",
              tvshow_id: ''

Phrase.create text: "GoT",
              tvshow_id: ''

puts 'Done adding phrases'