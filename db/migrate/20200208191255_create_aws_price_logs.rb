class CreateAwsPriceLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :aws_price_logs do |t|
      t.integer :version, limit: 8
      t.string :offer_code
      t.datetime :publication_date

      t.timestamps
    end
  end
end
