require 'net/http'
namespace :store_costs do
  desc 'Store AWS Cloudfront Pricing'
  task :update_rates do
    url = URI('https://pricing.us-east-1.amazonaws.com/offers/v1.0/aws/AmazonCloudFront/current/index.json')
    res = Net::HTTP.get_response(url)
    puts res.is_a?(Net::HTTPSuccess)
    puts res.body
  end
end