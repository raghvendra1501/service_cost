class AwsRegion < ApplicationRecord
  validates :region_code, presence: true, uniqueness: true
  validates :region_name, presence: true, uniqueness: true

  has_many :aws_products
end
