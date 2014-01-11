class CreateZipCodes < ActiveRecord::Migration
  def change
    create_table :zip_codes do |t|
      t.string :zip
      t.integer :area_id

      t.timestamps
    end
  end
end
