require 'rails_helper'

describe CoursesController do
  before do
    ActiveRecord::Base.connection.reset_pk_sequence!('courses')
    courses = [{:name => 'Principles of Economics', :course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati', :preReqs => 'None', :description => 'How a market economy determines the relative prices of goods, factors of production, and the allocation of resources and the circumstances under which it does it efficiently. Why such an economy has fluctuations and how they may becontrolled.'},
               {:name => 'The Art of Engineering', :course => 'ENGI E1102 The Art of Engineering', :prof => 'David Vallancourt'},
               {:name => 'Masterpieces of Western Art', :course => 'HUMA UN1121 Masterpieces of Western Art'},
               {:name => 'Masterpieces of Western Music', :course => 'HUMA UN1123 Masterpieces of Western Music'},
               {:name => 'Advanced Programming', :course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :preReqs => '(COMS W3134) or (COMS W3137)', :description => 'C programming language and Unix systems programming. Also covers Git, Make, TCP/IP networking basics, C++ fundamentals.'},
               {:name => 'Discrete Math', :course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai', :preReqs => 'Any introductory course in computer programming', :description => 'Logic and formal proofs, sequences and summation, mathematical induction, binomial coefficients, elements of finite probability, recurrence relations, equivalence relations and partial orderings, and topics in graph theory (including isomorphism, traversability, planarity, and colorings).'},
               {:name => 'Engineering SaaS', :course => 'COMS 4152 Engineering SaaS', :prof => 'Junfeng Yang', :preReqs => '', :description => ''},
               {:name => 'Intermediate Microeconomics', :course => 'ECON UN3211 Intermediate Microeconomics'}
              ]
    courses.each do |course|
      Course.create!(course)
    end
  end
  it 'shows the correct class for id = 1' do
      get :show, params: {id: 1}
      course_response = assigns(:course)
      expect(course_response.name).to include("Principles of Economics")
      expect(course_response.description).to include('How a market economy')
  end
  it 'shows the correct class for id = 7' do
    get :show, params: {id: 7}
    course_response = assigns(:course)
    expect(course_response.course).to include("COMS 4152 Engineering SaaS")
    expect(course_response.prof).to eq 'Junfeng Yang'
  end
  it 'shows the correct class for id = 5' do
    get :show, params: {id: 5}
    course_response = assigns(:course)
    expect(course_response.name).to eq 'Advanced Programming'
    expect(course_response.preReqs).to include('COMS W3134')
  end
end
