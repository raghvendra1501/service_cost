class Service::AmazonCloudFrontController < ApplicationController

  before_action :validate_region_and_date

  def region_based_price
    prices = AwsProductPrice
      .joins(:aws_product)
      .where(
        'aws_products.aws_region_id = :region_id',
        region_id: @region.id
      )

    prices = prices.where('effective_date <= :effective_date',
        effective_date: @effective_date
      ).order(effective_date: :desc).limit(1) if @effective_date.present?

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
        message: 'Please send a valid date in YY-MM-DD format'
      } and return if params[:date].present? && invalid_date?(params[:date])
    end

    def invalid_date? date
      date_format = '%Y-%m-%d'
      @effective_date = DateTime.strptime(date, date_format).end_of_day
      false 
    rescue ArgumentError
      true
    end
end
