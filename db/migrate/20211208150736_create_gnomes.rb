class CreateGnomes < ActiveRecord::Migration[6.0]
  def change
    create_table :gnomes do |t|
      t.string :name
      t.string :small_description
      t.text :big_description
      t.float :height
      t.float :width
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
