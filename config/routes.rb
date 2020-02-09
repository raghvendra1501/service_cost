Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :service do
    get 'AmazonCloudFront/region/:region_code' => 'amazon_cloud_front#region_based_price'
  end
end
