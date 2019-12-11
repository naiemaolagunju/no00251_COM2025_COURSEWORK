# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

defaultartist = Artist.where(name: 'Beyonce').first
defaultartist.delete if defaultartist

artists = Artist.create([name: 'Beyonce')]
%br
artists = Artist.create([image: %a{:href => "https://images-na.ssl-images-amazon.com/images/I/C1SJK-CimES._CR0,0,3840,2880_._SL1000_.jpg"} "Beyonce")]
%br
artists = Artist.create([notes: 'Queen B')]
%br
artists = Artist.create([favourite: true])
%br
