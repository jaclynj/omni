# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
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