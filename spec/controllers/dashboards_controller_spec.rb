require 'rails_helper'

describe DashboardsController do
    before do
        user1 = User.create!(first: 'Sameer',
                            last: 'Saxena',
                            uni: 'ss6167',
                            year: 2024,
                            school: 'SEAS',
                            major: 'Computer Science',
                            minor: 'Economics')
        user2 = User.create!(first: 'Jackson',
                            last: 'Roberts',
                            uni: 'jr3876',
                            year: 2023,
                            school: 'CC',
                            major: 'Economics',
                            minor: 'Computer Science')
        user3 = User.create!(first: 'Axel',
                            last: 'Hendrickson',
                            uni: 'ah2102',
                            year: 2023,
                            school: 'CC',
                            major: 'Cycling',
                            minor: 'None')
        user4 = User.create!(first: 'Lucas',
                            last: 'Cremers',
                            uni: 'lc1902',
                            year: 2023,
                            school: 'SEAS',
                            major: 'Glass Building',
                            minor: 'Reading')
        user5 = User.create!(first: 'Junfeng',
                            last: 'Yang',
                            uni: 'jy1203',
                            year: 2026,
                            school: 'CC',
                            major: 'Computer Science')
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

        school_reqs = [{:school => 'SEAS', :course => 'ECON UN1105 Principles of Economics'},
                            {:school => 'SEAS', :course => 'ENGI E1102 The Art of Engineering'},
                            {:school => 'CC', :course => 'HUMA UN1121 Masterpieces of Western Art'},
                            {:school => 'CC', :course => 'HUMA UN1123 Masterpieces of Western Music'}]

        major_reqs = [{:subject => 'Computer Science', :course => 'COMS 3157 Advanced Programming'},
                            {:subject => 'Computer Science', :course => 'COMS 3203 Discrete Math'},
                            {:subject => 'Economics', :course => 'ECON UN1105 Principles of Economics'},
                            {:subject => 'Economics', :course => 'ECON UN3211 Intermediate Microeconomics'}]


        minor_reqs = [{:subject => 'Economics', :course => 'ECON UN1105 Principles of Economics'},
                            {:subject => 'Economics', :course => 'ECON UN3211 Intermediate Microeconomics'},
                          {:subject => 'Computer Science', :course => 'COMS 3157 Advanced Programming'}]

        schedules = [{:uni => 'agh2172', :course => 'COMS 4152 Engineering SaaS'}]

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

        schedules.each do |schedule|
          Studentschedule.create!(schedule)
        end
    end
    it 'check whether uni takes session value' do
        get :show, session: {uni: 'ss6167'}
        expect(session[:uni]).to eq('ss6167')
        input_uni = assigns(:uni)
        expect(input_uni).to eq('ss6167')
    end
    it 'user1 should have proper school (SEAS) requirements' do
        get :show, session: {uni: 'ss6167'}
        school_reqs = assigns(:school_reqs)
        expect(school_reqs[1].course).to include('ENGI E1102 The Art of Engineering')
        #expect(school_reqs).to include('CHEM CC1403')
        #expect(school_reqs).not_to include('HUMA CC1001')
    end
    it 'user1 should have proper major requirements' do
        get :show, session: {uni: 'ss6167'}
        school_reqs = assigns(:major_reqs)
        expect(school_reqs[1].course).to include('COMS 3203 Discrete Math')
        #expect(school_reqs).to include('COMS W4115').and expect(school_reqs).not_to include('MATH UN1102')
    end
    it 'user1 should have proper minor requirements' do
        get :show, session: {uni: 'ss6167'}
        school_reqs = assigns(:minor_reqs)
        expect(school_reqs[1].course).to include('ECON UN3211 Intermediate Microeconomics')
        #expect(school_reqs).to include('ECON UN1105').and expect(school_reqs).not_to include('COMS W1004')
    end
    it 'user2 should have proper school (CC) requirements' do
        get :show, session: {uni: 'jr3876'}
        school_reqs = assigns(:school_reqs)
        expect(school_reqs[0].course).to include('HUMA UN1121 Masterpieces of Western Art')
    end
    it 'user2 should have proper major requirements' do
        get :show, session: {uni: 'jr3876'}
        school_reqs = assigns(:major_reqs)
        expect(school_reqs[0].course).to include('ECON UN1105 Principles of Economics')
        #expect(school_reqs).to include('MATH UN1102').and expect(school_reqs).not_to include('COMS W4115')
    end
    it 'user2 should have proper minor requirements' do
        get :show, session: {uni: 'jr3876'}
        school_reqs = assigns(:minor_reqs)
        expect(school_reqs[0].course).to include('COMS 3157 Advanced Programming')
        #expect(school_reqs).to include('COMS W1004')
        #expect(school_reqs).not_to include('ECON UN1105')
    end
    it 'user3 should have N/A major requirements' do
        get :show, session: {uni: 'ah2102'}
        school_reqs = assigns(:major_reqs)
        expect(school_reqs.empty?).to eq true
    end
    it 'user3 should have N/A minor requirements' do
        get :show, session: {uni: 'ah2102'}
        school_reqs = assigns(:minor_reqs)
        expect(school_reqs.empty?).to eq true
    end
    it 'user4 should have N/A major requirements' do
        get :show, session: {uni: 'lc1902'}
        school_reqs = assigns(:major_reqs)
        expect(school_reqs.empty?).to eq true
        #expect(school_reqs).to eq('None left!')
    end
    it 'user4 should have N/A minor requirements' do
        get :show, session: {uni: 'lc1902'}
        school_reqs = assigns(:minor_reqs)
        expect(school_reqs.empty?).to eq true
        #expect(school_reqs).to eq('NA')
    end
    it 'user5 should have proper major requirements' do
        get :show, session: {uni: 'jy1203'}
        school_reqs = assigns(:major_reqs)
        expect(school_reqs[0].course).to include('COMS 3157 Advanced Programming')
        #expect(school_reqs).to include('COMS W4115')
    end
    it 'user5 should have N/A minor requirements' do
        get :show, session: {uni: 'jy1203'}
        school_reqs = assigns(:minor_reqs)
        expect(school_reqs.empty?).to eq true
    end
    it 'redirect to home page if UNI is not found' do
        get :show, session: {uni: 'fadsjkl'}
        expect(response).to redirect_to root_path
        expect(flash[:notice]).to match(/User not found. Please sign up first./)
    end
    it 'updates student schedule succesfully (add)' do
        get :update, session: {uni: 'agh2172'}, params: {id: 4}
        addedClass = assigns(:added)
        expect(addedClass.course).to eq('HUMA UN1123 Masterpieces of Western Music')
        expect(addedClass.uni).to eq('agh2172')
    end
end
