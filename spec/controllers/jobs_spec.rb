require 'spec_helper'

describe Api::JobsController do
  before(:each) do
    FactoryGirl.create_list :job, 3
  end

  it 'gets list of jobs' do
    get :index
    expect(json_response.length).to eq 3
  end
end
