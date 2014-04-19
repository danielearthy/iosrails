FactoryGirl.define do
  sequence :lat do |n|
    "#{n}.0".to_f
  end

  sequence :lon do |n|
    "#{n}.0".to_f
  end

  sequence :name do |n|
    "name #{n}"
  end

  sequence :started_at do |n|
    Time.zone.now + n.hours
  end

  sequence :token do
    SecureRandom.hex(3)
  end

  # factory :attendance do
  #   event
  #   user
  # end

  factory :event do
    lat 400.4
    lon 400.400
    name "Daniel"
    started_at "2014-04-13 23:15:27 -0400"
    owner factory: :user
  end

  factory :user do
    device_token { generate(:token) }
  end
end