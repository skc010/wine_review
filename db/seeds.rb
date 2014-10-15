# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Wine.create(name:'2010 Alexander Valley Cabernet',year: 2010,winery:'Silver Oak',country:'U.S.A.',varietal:'Cabernet Sauvigon')
Wine.create(name:'2012 Chardonnay',year: 2012,winery:'Paradise Springs',country:'U.S.A.',varietal:'Chardonnay')
Wine.create(name:'Cantena',year: 2000,winery:'Malbec',country:'Argentina',varietal:'Cantena')
Wine.create(name:'2267 Merlot',year: 2267,winery:'Chateau Picard',country:'France',varietal:'Merlot')
