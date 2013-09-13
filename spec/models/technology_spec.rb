require 'spec_helper'

describe Technology do
  subject { FactoryGirl.create(:technology) }

  context 'schema' do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:css_class).of_type(:string) }
  end

  context 'model' do
    it { should respond_to(:name) }
    it { should validate_presence_of(:name) }

    it { should respond_to(:css_class) }

    it { should have_and_belong_to_many(:projects) }
  end
end
