FactoryGirl.define do  factory :relationship do
    follower_id 1
followed_id 1
  end
  factory :micropost do
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