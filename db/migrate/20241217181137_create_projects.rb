class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :url
      t.text :short_description, null: false
      t.text :long_description, null: false
      t.timestamps
    end
  end
end
