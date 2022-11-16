# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

courses = [{:name => 'Principles of Economics', :course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati'},
           {:name => 'Advanced Programming', :course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee'},
           {:name => 'Discrete Math', :course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai'}
  	 ]

courses.each do |course|
    Course.create!(course)
end