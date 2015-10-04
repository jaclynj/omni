# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Professional.delete_all
User.delete_all
Service.delete_all
Picture.delete_all
PictureablePicture.delete_all

Professional.create( 
  [ 
    { 
      username: "zoe501",
      first_name: "Rachel",
      last_name: "Zoe",
      company_name: "Ashley's Salon",
      description: 'With over 20 years experience I will take care of your hair and work with you to give you the look you love.',
      category: "Beauty",
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/2f3bd2b51263f08e920d9cb7fd8ff4fe.jpg"
      ).id
    },
    { 
      username: "TrendyCuts",
      first_name: "Rita",
      last_name: "Mora",
      company_name: "Rita's Trendy Cuts",
      description: "You are in great hands at Rita's. I've been owning my own salon business for over 10 years and take pride in my craft.",
      category: "Beauty",
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/2f3bd2b51263f08e920d9cb7fd8ff4fe.jpg"
      ).id
    },
    { 
      username: "yogagurl",
      first_name: "Jane",
      last_name: "Brown",
      company_name: "Peace of Mind",
      description: "I offer hands-on expert instruction to bring you mental peace and physical fitness and flexibility",
      category: "Fitness",
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/yoga_profile.jpg"
      ).id
    }
  ]
)
Service.create(
  [
    {
      name: "Beginner Yoga Class",
      category: "fitness",
      cost: 30.95,
      description: "Easy to follow instruction and relaxing vibes.",
      professional_id: Professional.find_by( username: "yogagurl" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/yoga1.jpg"
      ).id
    },
    {
      name: "Advanced Yoga Class",
      category: "fitness",
      cost: 42.95,
      description: "More instruction and relaxing vibes.",
      professional_id: Professional.find_by( username: "yogagurl" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/yoga2.jpeg"
      ).id
    },
    {
      name: "Bob Haircut",
      category: "beauty",
      cost: 25.00,
      description: "Classic and sexy short bob cut.",
      professional_id: Professional.find_by( username: "zoe501" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/cute-inverted-bob-hairstyle-for-black-hair-12.jpg"
      ).id
    },
    {
      name: "Coloring: Pastel Pink",
      category: "beauty",
      cost: 30.00,
      description: "Professional and delicate pink coloring.",
      professional_id: Professional.find_by( username: "zoe501" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/1435049682_kimberley-walsh-dyes-hair-pink.jpg"
      ).id
    },
    {
      name: "Short cut with curls",
      category: "beauty",
      cost: 18.00,
      description: "Stylish and modern short 'do.",
      professional_id: Professional.find_by( username: "TrendyCuts" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/images-6.jpeg"
      ).id
    },
    {
      name: "Braided Hairstyle",
      category: "beauty",
      cost: 22.00,
      description: "Beautiful braided hairstyle.",
      professional_id: Professional.find_by( username: "zoe501" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/AmberFillerup.jpg"
      ).id
    },
    {
      name: "Trim and blow dry",
      category: "beauty",
      cost: 24.00,
      description: "Classic and sexy short bob cut.",
      professional_id: Professional.find_by( username: "TrendyCuts" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/Unknown.jpeg"
      ).id
    },
    {
      name: "Hair cut and styling (curly)",
      category: "beauty",
      cost: 22.00,
      description: "I have expertise cutting and styling all types of curly and textured hair.",
      professional_id: Professional.find_by( username: "TrendyCuts" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/Thursday-Tresses10.jpg"
      ).id
    },
    {
      name: "Coloring and blow dry",
      category: "beauty",
      cost: 32.00,
      description: "Beautiful dark color lightening at the tips.",
      professional_id: Professional.find_by( username: "TrendyCuts" ).id,
      picture_id: Picture.create(
        storage_key: "https://s3.amazonaws.com/omni-pictures/images-12.jpeg"
      ).id
    }
  ]
)

User.create( 
  { 
    username: "maxinepayne",
    first_name: "Maxine",
    last_name: "Payne",
    location: "New York, NY",
    points: 0,
    picture_id: Picture.create(
      storage_key: "https://s3.amazonaws.com/omni-pictures/placeholderuseravatar.png"
    ).id
  }
)
