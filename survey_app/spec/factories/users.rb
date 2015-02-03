FactoryGirl.define do

  factory :user do
    name "pqr"
    email "asd@xss.com"
    age 23
    gender "M"
    password "sdsds"
    association :role
=begin
    after(:create) do |user|
      user.role = FactoryGirl.create(:role)
    end


    after(:build) do |user|
      user.role = Role.find_by_name('admin') || FactoryGirl.create(:role)
    end
  end
=end
  end
end
