class CreateNursemaids < ActiveRecord::Migration[5.0]
  def change
    create_table :nursemaids do |t|
      t.string :name
      t.string :education
      t.string :experience
      t.string :medicine
      t.string :description
      t.string :video
      t.integer :price

      t.timestamps
    end
  end
end
