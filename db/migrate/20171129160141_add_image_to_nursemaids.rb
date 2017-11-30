class AddImageToNursemaids < ActiveRecord::Migration[5.0]
  def change
    add_column :nursemaids, :image, :string
  end
end
