FactoryGirl.define do
  factory :project do |f|
    f.name { |n| "Project #{n}" } 
    f.description { |n| "Description #{n}" } 

    technologies { [FactoryGirl.create(:technology)] }
  end

  factory :technology do |t|
    t.name { |n| "Technology #{n}"}
    t.css_class "label-primary"
  end
end