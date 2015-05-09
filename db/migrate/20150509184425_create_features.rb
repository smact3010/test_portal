class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
