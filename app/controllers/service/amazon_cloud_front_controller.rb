class Service::AmazonCloudFrontController < ApplicationController

  before_action :validate_region_and_date

  def region_based_price
    prices = AwsProductPrice.get_prices_by_region @region.id
    prices = prices.get_prices_on_effective_date @effective_date if @effective_date.present?
    render json: prices.to_required_format
  end

  private

    def validate_region_and_date
      render json: {
        message: 'Please provide region code'
      } and return if params[:region_code].blank?

      @region = AwsRegion.find_by(region_code: params[:region_code])
      render json: {
        success: false,
        message: 'No associated aws region found with the sent region code.'
      } and return if @region.blank?

      render json: {
        message: 'Please send a valid date in YYYY-MM-DD format'
      } and return if params[:date].present? && invalid_date?(params[:date])
    end

    def invalid_date? date
      passed_date = date.to_datetime
      @effective_date = passed_date&.end_of_day
      false 
    rescue ArgumentError
      true
    end
end
