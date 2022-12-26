AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Category.create([
  { title: 'Drama',
    image_url: 'category_drama.jpg'},
    ])
Film.create([
    { title: 'The Shawshank Redemption',
      description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency',
      director: 'Frank Darabont',
      category_id: '1',
      rating: '0.0',
      image_url: "shawshank_redemption_image.jpg",
      thumbnail_url: "shawshank_redemption_thumbnail.jpg",
      trailer_url: "shawshank_redemption_trailer.mp4"},
  ])
