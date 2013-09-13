FactoryGirl.define do
  factory :project do |f|
    f.name { |n| "Project #{n}" } 
    f.description { |n| "Description #{n}" } 
    f.full_description { |n| "Full description #{n}" } 

    technologies { [FactoryGirl.create(:technology)] }
  end

  factory :technology do |f|
    f.name { |n| "Technology #{n}"}
    f.css_class "label-primary"
    f.description { |n| "Description #{n}" } 
    f.full_description { |n| "Full description #{n}" } 
  end
end