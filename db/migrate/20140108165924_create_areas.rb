class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string  :name
      t.string  :url_name
      t.integer :zip

      t.timestamps
    end
  end
end
