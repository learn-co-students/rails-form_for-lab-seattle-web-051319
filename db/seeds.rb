# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sc1 = SchoolClass.create(title: "Poly Science", room_number: "234")
sc2 = SchoolClass.create(title: "Biologery", room_number: "12345")
sc3 = SchoolClass.create(title: "Trigomonometery", room_number: "111")
sc4 = SchoolClass.create(title: "Studyology", room_number: "999")