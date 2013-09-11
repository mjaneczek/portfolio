require 'spec_helper'

describe Project do
  subject { FactoryGirl.create(:project) }

  context 'schema' do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:description).of_type(:text) }
  end

  context 'model' do
    it { should respond_to(:name) }
    it { should validate_presence_of(:name) }

    it { should respond_to(:description) }
   
    it { should have_and_belong_to_many(:technologies) }
  end
end
