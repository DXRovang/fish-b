class DeleteString < ActiveRecord::Migration[6.1]
  def change
    remove_column :fish, :string
  end
end
