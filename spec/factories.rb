FactoryGirl.define do
  factory :project do |f|
    f.name { |n| "Project #{n}" } 
    f.description { |n| "Description #{n}" } 
  end

  factory :technology do |t|
    t.name { |n| "Technology #{n}"}
  end
end