class CreateFish < ActiveRecord::Migration[6.1]
  def change
    create_table :fish do |t|
      t.string :species_name
      t.string :string

      t.timestamps
    end
  end
end
