FactoryGirl.define do
  factory :aws_price_log do
    sequence(:version) { |n| "version_#{n}" }
    offer_code         { SecureRandom.hex(10) }
    publication_date   { DateTime.now }
    created_at         { DateTime.now }
    updated_at         { DateTime.now }
  end
end