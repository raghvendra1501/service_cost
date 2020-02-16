class AwsProductPrice < ApplicationRecord
  belongs_to :aws_product

  def self.update_product_prices product_terms
    product_terms.each do |product_key, price_sections|
      product = AwsProduct.get_product(product_key)
      price_sections.each do |price_code, price_categories|
        target_price_object = self.find_or_initialize_by(
          aws_product_id: product.id,
          effective_date: price_categories['effectiveDate'],
          offer_term_code: price_categories['offerTermCode']
        )
        target_price_object.price_dimensions = price_categories['priceDimensions']
        target_price_object.save
      end
    end
  end

  def self.to_required_format
    required_pricing_arr = []
    self.all.each do |pricing|
      pricing.price_dimensions.each do |code, price_dimension|
        price_hash = price_dimension.dup
        price_hash['effectiveDate'] = pricing.effective_date
        required_pricing_arr << price_hash
      end
    end
    required_pricing_arr
  end

  def self.get_prices_by_region region_id
    joins(:aws_product)
    .where(
      'aws_products.aws_region_id = :region_id',
      region_id: region_id
    )
  end

  def self.get_prices_on_effective_date effective_date
    required_price_ids = self.select("MAX(aws_product_prices.id) AS price_id")
    .where('effective_date <= :effective_date',
      effective_date: effective_date
    ).group(:aws_product_id).collect(&:price_id)
    self.where(id: required_price_ids)
  end
end
