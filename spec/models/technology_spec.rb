require 'spec_helper'

describe Technology do
  subject { FactoryGirl.create(:technology) }

  context 'schema' do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:css_class).of_type(:string) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:full_description).of_type(:text) }
  end

  context 'model' do
    it { should respond_to(:name) }
    it { should validate_presence_of(:name) }

    it { should respond_to(:css_class) }
    it { should respond_to(:description) }
    it { should respond_to(:full_description) }

    it { should have_and_belong_to_many(:projects) }
  end
end
