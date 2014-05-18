require 'spec_helper'

describe Api::JobsController do
  before(:each) do
    FactoryGirl.create :job, start_day: Date.yesterday, commercial: false
    FactoryGirl.create_list :job, 3
  end

  it 'gets list of jobs' do
    get :index
    expect(json_response.length).to eq 4
  end

  it 'calculates total summary work' do
    get :summary
    expect(json_response).to eq(HashWithIndifferentAccess.new({
                                    total_commercial_work: {
                                        years: 0, months: 0, days: 6
                                    },
                                    programmer_for: {
                                        years: 0, months: 0, days: 1
                                    },
                                }))
  end
end
