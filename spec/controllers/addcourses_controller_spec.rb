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
end
