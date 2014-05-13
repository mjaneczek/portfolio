require 'spec_helper'

describe Api::TechnologiesController do
  before(:each) do
    FactoryGirl.create_list :technology, 5
  end

  it 'gets list of technologies' do
    get :index
    expect(json_response.length).to eq 5
  end
end
