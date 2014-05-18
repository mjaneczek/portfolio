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

  factory :job do |f|
    f.start_day { Date.yesterday }
    f.end_day { Date.tomorrow }
    f.position { 'Programmer' }
    f.description { 'Some description' }
    f.commercial true
  end
end
