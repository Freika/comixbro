class CreateComixes < ActiveRecord::Migration
  def change
    create_table :comixes do |t|
      t.string :title
      t.string :year
      t.integer :publisher_id
      t.string :language

      t.timestamps null: false
    end
  end
end
