FactoryGirl.define do  factory :micropost do
    content "MyString"
user_id 1
  end

  factory :user do
    name    "Michael Hartl"
    email   "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end