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
      username: "coolcuts345",
      first_name: "Ashley",
      last_name: "Covington",
      company_name: "Ashley's Salon",
      category: "Beauty"
    },
    { 
      username: "yogagurl87",
      first_name: "Janelle",
      last_name: "Brown",
      company_name: "Peace of Mind",
      category: "Fitness"
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
      professional_id: Professional.find_by( username: "yogagurl87" ).id
    },
    {
      name: "Advanced Yoga Class",
      category: "fitness",
      cost: 42.95,
      description: "More instruction and relaxing vibes.",
      professional_id: Professional.find_by( username: "yogagurl87" ).id
    },
    {
      name: "Bob Haircut",
      category: "beauty",
      cost: 25.00,
      description: "Classic and sexy short bob cut.",
      professional_id: Professional.find_by( username: "coolcuts345" ).id
    }
  ]
)
Picture.create(
  storage_key: "https://s3.amazonaws.com/omni-pictures/placeholderuseravatar.png"
)
User.create( 
  { 
    username: "maxinepayne",
    first_name: "Maxine",
    last_name: "Payne",
    location: "New York, NY",
    points: 0,
    picture_id: Picture.find_by( 
      storage_key: "https://s3.amazonaws.com/omni-pictures/placeholderuseravatar.png"
    ).id
  }
)
