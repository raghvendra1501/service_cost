class AwsPriceLog < ApplicationRecord

  def self.update_rates aws_response
    return if self.last.present? && aws_response['version']&.to_i <= self.last.version
    self.create(
      version: aws_response['version'],
      offer_code: aws_response['offerCode'],
      publication_date: aws_response['publicationDate']
    )
    AwsProduct.verify_and_create_products aws_response['products']
    AwsProductPrice.update_product_prices aws_response['terms']['OnDemand']
  end
end
