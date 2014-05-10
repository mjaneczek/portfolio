require 'spec_helper'

describe Api::ProjectsController do
  before(:each) do
    FactoryGirl.create_list :project, 5
  end

  it 'gets list of projects' do
    get :index
    expect(json_response.length).to eq 5
  end
end
