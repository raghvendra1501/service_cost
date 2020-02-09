class AwsProduct < ApplicationRecord

  before_create :fetch_aws_region
  belongs_to :aws_region, optional: true
  has_many :aws_product_prices

  def self.verify_and_create_products products_hash = []
    products_hash.each do |sku, product|
      aws_product = self.find_by(sku: product['sku'])
      self.create(
        sku: product['sku'],
        product_family: product['productFamily'],
        aws_attributes: product['attributes']
      ) if aws_product.nil?
    end
  end

  def self.get_product sku
    self.find_by(sku: sku)
  end

  def fetch_aws_region
    return if aws_attributes['locationType'] != 'AWS Region'
    region = AwsRegion.find_by(
      region_name: aws_attributes['location']
    )
    self.aws_region_id = region.id if region.present?
  end
end
