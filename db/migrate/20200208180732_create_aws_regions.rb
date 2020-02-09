class CreateAwsRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :aws_regions do |t|
      t.string :region_code
      t.string :region_name

      t.timestamps
    end
  end
end
