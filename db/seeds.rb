AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
Category.create([
    { title: 'Drama', image_url: 'category_drama.jpg'},
    { title: 'Crime', image_url: 'category_crime.jpg'},
    { title: 'Adventure', image_url: 'category_adventure.jpg'}
  ])
Film.create([
    { title: 'The Shawshank Redemption',
      description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency',
      director: 'Frank Darabont',
      category_id: '1',
      image_url: "shawshank_redemption_image.jpg",
      thumbnail_url: "shawshank_redemption_thumbnail.jpg",
      trailer_url: "shawshank_redemption_trailer.mp4"
    },
    { title: "Schindler's List",
      description: 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis',
      director: 'Steven Spielberg',
      category_id: '1',
      image_url: "schindler_image.jpg",
      thumbnail_url: "schindler_thumbnail.jpg",
      trailer_url: "schindler_trailer.mp4"
    },
    { title: 'Fight Club',
      description: 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more',
      director: 'David Fincher',
      category_id: '1',
      image_url: "fight_club_image.jpg",
      thumbnail_url: "fight_club_thumbnail.jpg",
      trailer_url: "fight_club_trailer.mp4"
    },
    { title: 'City of God',
      description: "In the slums of Rio, two kids' paths diverge as one struggles to become a photographer and the other a kingpin",
      director: 'Fernando Meirelles',
      category_id: '2',
      image_url: "city_of_god_image.jpg",
      thumbnail_url: "city_of_god_thumbnail.jpg",
      trailer_url: "city_of_god_trailer.mp4"
    },
    { title: 'The Godfather Part II',
      description: 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate',
      director: 'Francis Ford Coppola',
      category_id: '2',
      image_url: "godfather_image.jpg",
      thumbnail_url: "godfather_thumbnail.jpg",
      trailer_url: "godfather_trailer.mp4"
    },
    { title: 'Lock, Stock and Two Smoking Barrels',
      description: "Eddy persuades his three pals to pool money for a vital poker game against a powerful local mobster, Hatchet Harry. Eddy loses, after which Harry gives him a week to pay back 500,000 pounds",
      director: 'Guy Ritchie',
      category_id: '2',
      image_url: "smoking_barrels_image.jpg",
      thumbnail_url: "smoking_barrels_thumbnail.jpg",
      trailer_url: "smoking_barrels_trailer.mp4"
    },
    { title: 'The Lord of the Rings: The Return of the King',
      description: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring",
      director: 'Peter Jackson',
      category_id: '3',
      image_url: "lord_of_the_rings_image.jpg",
      thumbnail_url: "lord_of_the_rings_thumbnail.jpg",
      trailer_url: "lord_of_the_rings_trailer.mp4"
    },
    { title: 'The Good, the Bad and the Ugly',
      description: "A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery",
      director: 'Sergio Leone',
      category_id: '3',
      image_url: "western_image.jpg",
      thumbnail_url: "western_thumbnail.jpg",
      trailer_url: "western_trailer.mp4"
    },
    { title: 'Star Wars: Episode V - The Empire Strikes Back',
      description: "After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett",
      director: 'Irvin Kershner',
      category_id: '3',
      image_url: "star_wars_image.jpg",
      thumbnail_url: "star_wars_thumbnail.jpg",
      trailer_url: "star_wars_trailer.mp4"
    }
  ])
