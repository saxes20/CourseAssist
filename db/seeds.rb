# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

courses = [{:name => 'Principles of Economics', :course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati', :time => 'MW 10:10-11:25', :preReqs => 'None', :description => 'How a market economy determines the relative prices of goods, factors of production, and the allocation of resources and the circumstances under which it does it efficiently. Why such an economy has fluctuations and how they may becontrolled.'},
           {:name => 'The Art of Engineering', :course => 'ENGI E1102 The Art of Engineering', :time => 'TTh 10:10-11:25', :prof => 'David Vallancourt'},
           {:name => 'Masterpieces of Western Art', :course => 'HUMA UN1121 Masterpieces of Western Art', :time => 'MWF 11:00-12:15'},
           {:name => 'Masterpieces of Western Music', :course => 'HUMA UN1123 Masterpieces of Western Music', :time => 'F 10:10-12:30'},
           {:name => 'Advanced Programming', :course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :time => 'MW 12:15-1:25', :preReqs => '(COMS W3134) or (COMS W3137)', :description => 'C programming language and Unix systems programming. Also covers Git, Make, TCP/IP networking basics, C++ fundamentals.'},
           {:name => 'Discrete Math', :course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai', :time => 'MW 3:15-4:25', :preReqs => 'Any introductory course in computer programming', :description => 'Logic and formal proofs, sequences and summation, mathematical induction, binomial coefficients, elements of finite probability, recurrence relations, equivalence relations and partial orderings, and topics in graph theory (including isomorphism, traversability, planarity, and colorings).'},
           {:name => 'Engineering SaaS', :course => 'COMS 4152 Engineering SaaS', :prof => 'Junfeng Yang', :time => 'TTh 8:40-9:55', :preReqs => '', :description => ''},
           {:name => 'Intermediate Microeconomics', :course => 'ECON UN3211 Intermediate Microeconomics', :time => 'TTh 6:40-7:55'}
          ]

reviews = [{:course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati', :review => 'Great course'},
          {:course => 'ENGI E1102 The Art of Engineering', :prof => 'David Vallancourt', :review => 'Easy course'},
          {:course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :review => 'Tough course'},
          {:course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai', :review => 'Bad course'},
          {:course => 'COMS 4152 Engineering SaaS', :prof => 'Junfeng Yang', :review => 'Amazing course'},
          {:course => 'COMS 4152 Engineering SaaS', :prof => 'Junfeng Yang', :review => 'The best course Ive taken'}
         ]

school_reqs = [{:school => 'SEAS', :course => 'ECON UN1105 Principles of Economics'},
               {:school => 'SEAS', :course => 'ENGI E1102 The Art of Engineering'},
               {:school => 'CC', :course => 'HUMA UN1121 Masterpieces of Western Art'},
               {:school => 'CC', :course => 'HUMA UN1123 Masterpieces of Western Music'}]

major_reqs = [{:subject => 'Computer Science', :course => 'COMS 3157 Advanced Programming'},
              {:subject => 'Computer Science', :course => 'COMS 3203 Discrete Math'}]

minor_reqs = [{:subject => 'Economics', :course => 'ECON UN1105 Principles of Economics'},
              {:subject => 'Economics', :course => 'ECON UN3211 Intermediate Microeconomics'}]

courses.each do |course|
    Course.create!(course)
end

reviews.each do |review|
    Coursereview.create!(review)
end

school_reqs.each do |sr|
    Schoolreq.create!(sr)
end

major_reqs.each do |mjr|
    Majorreq.create!(mjr)
end

minor_reqs.each do |mnr|
    Minorreq.create!(mnr)
end