FactoryGirl.define do
  factory :project do |f|
    f.name { |n| "Project #{n}" } 
    f.description { |n| "Description #{n}" } 
    f.full_description { |n| "Full description #{n}" } 

    technologies { [FactoryGirl.create(:technology)] }
  end

  factory :technology do |f|
    f.name { |n| "Technology #{n}"}
    f.description { |n| "Description #{n}" } 
    f.full_description { |n| "Full description #{n}" } 
  end

  factory :screenshot do |f|
    f.image 'image.png'
    f.description { |n| "Description #{n}" } 
    
    project
  end
end
