class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :email
      t.integer :zip

      t.timestamps
    end
  end
end
