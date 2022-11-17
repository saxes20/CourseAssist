# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

courses = [{:name => 'Principles of Economics', :course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati', :preReqs => 'None', :description => 'How a market economy determines the relative prices of goods, factors of production, and the allocation of resources and the circumstances under which it does it efficiently. Why such an economy has fluctuations and how they may becontrolled.'},
           {:name => 'Advanced Programming', :course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :preReqs => '(COMS W3134) or (COMS W3137)', :description => 'C programming language and Unix systems programming. Also covers Git, Make, TCP/IP networking basics, C++ fundamentals.'},
           {:name => 'Discrete Math', :course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai', :preReqs => 'Any introductory course in computer programming', :description => 'Logic and formal proofs, sequences and summation, mathematical induction, binomial coefficients, elements of finite probability, recurrence relations, equivalence relations and partial orderings, and topics in graph theory (including isomorphism, traversability, planarity, and colorings).'},
           {:name => 'Engineering SaaS', :course => 'COMS 4152 Engineering SaaS', :prof => 'Junfeng Yang', :preReqs => '', :description => ''}
  	 ]

courses.each do |course|
    Course.create!(course)
end
