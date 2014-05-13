require 'spec_helper'

describe Api::ProjectsController do
  before(:each) do
    FactoryGirl.create_list :project, 10
  end

  it 'gets list of projects' do
    get :index
    expect(json_response.length).to eq 10
  end

  it 'gets 5 last projects' do
    get :recent
    expect(json_response.length).to eq 5
  end
end
