FactoryGirl.define do
  factory :project do |f|
    f.name { |n| "project#{n}" } 
    f.description { |n| "description#{n}" } 
  end
end