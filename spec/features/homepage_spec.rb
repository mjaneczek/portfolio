require 'spec_helper'

describe 'homepage' do
  before(:each) do
    FactoryGirl.create_list :project, 10, name: 'Test project'
  end

  let(:project_name) { 'Test project' }

  it 'displays 5 last projects' do
    visit '/'
    expect(page).to have_content project_name, count: 5
  end
end
