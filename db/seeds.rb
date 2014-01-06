puts 'Adding seed tv shows?'
tvshow1 = Tvshow.create title: "Breaking Bad",
             image: 'http://www.thecampuscompanion.com/party-lab/files/2012/09/breaking-bad-drinking-game-1024x640.png'

tvshow2 = Tvshow.create title: "Scandal",
             image: 'http://ia.media-imdb.com/images/M/MV5BMTUwMTQyMTIwMV5BMl5BanBnXkFtZTcwNjI1MzU2Nw@@._V1_.jpg'

tvshow3 = Tvshow.create title: "Game of Thrones",
             image: 'http://thedrawshop.com/wp-content/uploads/2013/08/game-of-thrones-season-4.jpg'

puts 'Done adding tv shows'

puts 'Adding phrases?'
Phrase.create text: "Olivia Pope",
              tvshow: tvshow2

Phrase.create text: "Walt",
              tvshow: tvshow1

Phrase.create text: "GoT",
              tvshow: tvshow3

Phrase.create text: "Jesse",
              tvshow: tvshow1

Phrase.create text: "Huck",
              tvshow: tvshow2

Phrase.create text: "Joffrey",
              tvshow_id: tvshow3

puts 'Done adding phrases'