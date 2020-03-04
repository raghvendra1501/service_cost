class AwsPriceLog < ApplicationRecord

  validates :version, presence: true, uniqueness: true
  validates :publication_date, presence: true, uniqueness: true

  def self.update_rates aws_response
    return if self.last.present? && aws_response['version']&.to_i <= self.last.version

    price_log = self.create(
      version: aws_response['version'],
      offer_code: aws_response['offerCode'],
      publication_date: aws_response['publicationDate']
    )
    return if price_log.nil?

    AwsProduct.verify_and_create_products aws_response['products']
    AwsProductPrice.update_product_prices aws_response['terms']['OnDemand']
  end
end
