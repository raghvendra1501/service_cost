class CreateAwsProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :aws_products do |t|
      t.string :sku
      t.string :product_family
      t.json :aws_attributes
      t.integer :aws_region_id

      t.timestamps
    end

    add_index :aws_products, :aws_region_id
  end
end
