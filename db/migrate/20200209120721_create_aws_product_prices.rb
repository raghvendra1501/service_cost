class CreateAwsProductPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :aws_product_prices do |t|
      t.string :offer_term_code
      t.datetime :effective_date
      t.json :price_dimensions
      t.integer :aws_product_id

      t.timestamps
    end

    add_index :aws_product_prices, :aws_product_id
  end
end
