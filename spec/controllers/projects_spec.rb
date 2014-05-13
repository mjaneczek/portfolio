require 'spec_helper'

describe Api::ProjectsController do
  before(:each) do
    FactoryGirl.create_list :technology, 3
    FactoryGirl.create_list :project, 10
  end

  let(:example_full_description) { 'example description text' }
  let(:example_project_technology_ids) { Technology.last(3).map(&:id) }
  let(:project) { FactoryGirl.create :project, full_description: example_full_description, technology_ids: example_project_technology_ids}

  it 'gets list of projects' do
    get :index
    expect(json_response.length).to eq 10
  end

  it 'gets 5 last projects' do
    get :recent
    expect(json_response.length).to eq 5
  end

  it 'gets project details' do
    get :show, id: project
    expect(json_response).to include(full_description: example_full_description, technology_ids: example_project_technology_ids)
  end
end
