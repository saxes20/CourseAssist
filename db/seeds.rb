# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

courses = [{:name => 'Principles of Economics', :course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati', :preReqs => 'None', :description => 'How a market economy determines the relative prices of goods, factors of production, and the allocation of resources and the circumstances under which it does it efficiently. Why such an economy has fluctuations and how they may becontrolled.'},
           {:name => 'The Art of Engineering', :course => 'ENGI E1102 The Art of Engineering', :prof => 'David Vallancourt'},
           {:name => 'Masterpieces of Western Art', :course => 'HUMA UN1121 Masterpieces of Western Art'},
           {:name => 'Masterpieces of Western Music', :course => 'HUMA UN1123 Masterpieces of Western Music'},
           {:name => 'Advanced Programming', :course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :preReqs => '(COMS W3134) or (COMS W3137)', :description => 'C programming language and Unix systems programming. Also covers Git, Make, TCP/IP networking basics, C++ fundamentals.'},
           {:name => 'Discrete Math', :course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai', :preReqs => 'Any introductory course in computer programming', :description => 'Logic and formal proofs, sequences and summation, mathematical induction, binomial coefficients, elements of finite probability, recurrence relations, equivalence relations and partial orderings, and topics in graph theory (including isomorphism, traversability, planarity, and colorings).'},
           {:name => 'Engineering SaaS', :course => 'COMS 4152 Engineering SaaS', :prof => 'Junfeng Yang', :preReqs => '', :description => ''},
           {:name => 'Intermediate Microeconomics', :course => 'ECON UN3211 Intermediate Microeconomics'}
           {:course => 'ECON UN3213 Intermediate Macroeconomics'},
           {:course => 'ECON UN3412 Intro to Econometrics'},
           {:course => 'COMS W3134 Data Structures in Java'}, 
           {:course => 'COMS W1004 Intro to Programming in Java'}, 
           {:course => 'COMS W3261 Computer Science Theory'},
           {:course => 'COMS W3827 Fundamentals of Computer Systems'},
           {:course => 'ECON UN2105 The American Economy'},
           {:course => 'ECON UN2257 Global Economy'},
           {:course => 'ECON UN3025 Financial Economics'},
          ]

school_reqs = [{:school => 'SEAS', :course => 'ECON UN1105 Principles of Economics'},
               {:school => 'SEAS', :course => 'ENGI E1102 The Art of Engineering'},
               {:school => 'CC', :course => 'HUMA UN1121 Masterpieces of Western Art'},
               {:school => 'CC', :course => 'HUMA UN1123 Masterpieces of Western Music'}]

major_reqs = [{:subject => 'Economics', :course => 'ECON UN1105 Principles of Economics'},
            {:subject => 'Economics', :course => 'ECON UN3211 Intermediate Microeconomics'}, 
            {:subject => 'Economics', :course => 'ECON UN3213 Intermediate Macroeconomics'},
            {:subject => 'Economics', :course => 'ECON UN3412 Intro to Econometrics'},
            {:subject => 'Economics', :course => 'ECON UN2105 The American Economy'},
            {:subject => 'Economics', :course => 'ECON UN2257 Global Economy'},
            {:subject => 'Economics', :course => 'ECON UN3025 Financial Economics'}
            {:subject => 'Computer Science', :course => 'COMS W1004 Intro to Programming in Java'}, 
            {:subject => 'Computer Science', :course => 'COMS W3134 Data Structures in Java'}, 
            {:subject => 'Computer Science', :course => 'COMS W3157 Advanced Programming'}, 
            {:subject => 'Computer Science', :course => 'COMS W3203 Discrete Math'},
            {:subject => 'Computer Science', :course => 'COMS W3261 Computer Science Theory'},
            {:subject => 'Computer Science', :course => 'COMS W3827 Fundamentals of Computer Systems'}]

minor_reqs = [{:subject => 'Economics', :course => 'ECON UN1105 Principles of Economics'},
              {:subject => 'Economics', :course => 'ECON UN3211 Intermediate Microeconomics'}, 
              {:subject => 'Economics', :course => 'ECON UN3213 Intermediate Macroeconomics'},
              {:subject => 'Economics', :course => 'ECON UN3412 Intro to Econometrics'},
              {:subject => 'Computer Science', :course => 'COMS W1004 Intro to Programming in Java'}, 
              {:subject => 'Computer Science', :course => 'COMS W3134 Data Structures in Java'}, 
              {:subject => 'Computer Science', :course => 'COMS W3157 Advanced Programming'}, 
              {:subject => 'Computer Science', :course => 'COMS W3203 Discrete Math'}]

courses.each do |course|
    Course.create!(course)
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
