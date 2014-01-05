Tvshow.delete_all
Phrase.delete_all

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
              tvshow_id: '2',
              blockedshow: '1'

Phrase.create text: "Walt",
              tvshow_id: '1',
              blockedshow: '2'

Phrase.create text: "GoT",
              tvshow_id: '3',
              blockedshow: '3'

Phrase.create text: "Jesse",
              tvshow_id: '1',
              blockedshow: '3'

Phrase.create text: "Huck",
              tvshow_id: '2',
              blockedshow: '1'

Phrase.create text: "Joffrey",
              tvshow_id: '3',
              blockedshow: '3'

puts 'Done adding phrases'