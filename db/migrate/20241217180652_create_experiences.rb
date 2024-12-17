class CreateExperiences < ActiveRecord::Migration[8.0]
  def change
    create_table :experiences do |t|
      t.string :job_title, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false
      t.string :company, null: false
      t.string :company_logo, null: false
      t.text :description, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
