Tvshow.delete_all
Phrase.delete_all



puts 'Adding seed tv shows?'
tvshow1 = Tvshow.create title: "Breaking Bad",
             image: 'http://www.thecampuscompanion.com/party-lab/files/2012/09/breaking-bad-drinking-game-1024x640.png'

tvshow2 = Tvshow.create title: "Scandal",
             image: 'http://ia.media-imdb.com/images/M/MV5BMTUwMTQyMTIwMV5BMl5BanBnXkFtZTcwNjI1MzU2Nw@@._V1_.jpg'

tvshow3 = Tvshow.create title: "Game of Thrones",
             image: 'http://thedrawshop.com/wp-content/uploads/2013/08/game-of-thrones-season-4.jpg'

tvshow4 = Tvshow.create title: "Downton Abbey",
                        image: 'http://arielkprice.files.wordpress.com/2012/03/51o43qenbpl-_sx500_.jpg'

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
              tvshow: tvshow3

#### adding more phrases

Phrase.create text: "Quinn",
              tvshow: tvshow2

Phrase.create text: "#BreakingBad",
              tvshow: tvshow1

Phrase.create text: "#Gameofthrones",
              tvshow: tvshow3

Phrase.create text: "heisenburg",
              tvshow: tvshow1

Phrase.create text: "gladiators",
              tvshow: tvshow2

Phrase.create text: "Daenerys",
              tvshow: tvshow3



Phrase.create text: "Fitz",
              tvshow: tvshow2

Phrase.create text: "Skylar",
              tvshow: tvshow1

Phrase.create text: "Stark",
              tvshow: tvshow3

Phrase.create text: "Flynn",
              tvshow: tvshow1

Phrase.create text: "Cyrus",
              tvshow: tvshow2

Phrase.create text: "Lannister",
              tvshow: tvshow3

Phrase.create text:"Crawley",
              tvshow: tvshow4

Phrase.create text:"Matthew",
              tvshow: tvshow4

Phrase.create text:"Grantham",
              tvshow: tvshow4

Phrase.create text:"Edith",
              tvshow: tvshow4

Phrase.create text:"Sybil",
              tvshow: tvshow4

Phrase.create text:"Mary",
              tvshow: tvshow4

puts 'Done adding phrases'