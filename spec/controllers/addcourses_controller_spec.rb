require 'rails_helper'

describe AddcoursesController do
    it 'check whether uni takes session value' do
        get :index, session: {uni: 'ss6167'}
        expect(session[:uni]).to eq('ss6167')
        input_uni = assigns(:uni)
        expect(input_uni).to eq('ss6167')
    end
    before do
        post :create, params: {"addcourse"=>{"course"=>"ECON UN1105 Principles of Economics", "semester"=>"Fall", "year"=>"2018"}}
    end
    it 'should assign courseyear to year' do
        year = assigns(:courseyear)
        expect(year).to eq(2018)
    end
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
      addcourses = [{:uni => 'agh2172', :course => 'ENGI E1102 The Art of Engineering'}]
      addcourses.each do |addcourse|
        Addcourse.create!(addcourse)
      end
    end
    it 'checks if shows right courses for uni' do
      get :show, session: {uni: 'agh2172'}
      taken = assigns(:taken_courses)
      expect(taken).to include('ENGI E1102 The Art of Engineering')

    end
    it 'updates user course successfully' do
      get :update, params: {id:4}, session: {uni: 'agh2172'}
      newCourse = assigns(:addcourse)
      expect(newCourse.uni).to eq ('agh2172')
      expect(newCourse.course).to eq('HUMA UN1123 Masterpieces of Western Music')
    end
end
