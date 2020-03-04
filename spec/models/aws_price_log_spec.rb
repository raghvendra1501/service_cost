require 'rails_helper'

RSpec.describe AwsPriceLog, type: :model do
  it 'version is mandatory' do
    price_log = AwsPriceLog.new(version: nil)
    expect(price_log).to_not be_valid
  end

  it 'publication_date is mandatory' do
    price_log = AwsPriceLog.new(publication_date: nil)
    price_log.save
    expect(price_log.errors[:publication_date].first).to eq("can't be blank")
    # price_log.errors[:publication_date].should eq()
    # price_log.errors[:publication_date].first.to 
    # "this string".should eq("this string")
  end
end