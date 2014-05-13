require 'spec_helper'

describe Api::TechnologiesController do
  before(:each) do
    FactoryGirl.create_list :technology, 5
  end

  let(:example_full_description) { 'example description text' }
  let(:example_technology_project_ids) { Project.last(3).map(&:id) }
  let(:technology) { FactoryGirl.create :technology, full_description: example_full_description, project_ids: example_technology_project_ids}

  it 'gets list of technologies' do
    get :index
    expect(json_response.length).to eq 5
  end

  it 'gets technology details' do
    get :show, id: technology
    expect(json_response).to include(full_description: example_full_description, project_ids: example_technology_project_ids)
  end
end
