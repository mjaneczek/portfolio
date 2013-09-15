require 'spec_helper'

describe Screenshot do
  subject { FactoryGirl.create(:screenshot) }

  context 'schema' do
    it { should have_db_column(:image).of_type(:string).with_options(null: false) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:project_id).of_type(:integer) }
  end

  context 'model' do
    it { should respond_to(:image) }
    it { should respond_to(:description) }

    it { should belong_to(:project) }
  end
end
