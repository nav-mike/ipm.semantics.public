class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :github, null: true, default: nil
      t.string :twitter, null: true, default: nil
      t.string :keywords
      t.boolean :status
      t.string :title, null: true, default: nil
      t.string :name, null: true, default: nil
      t.string :logo, null: true, default: nil
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :link, null: true, default: nil

      t.timestamps null: false
    end
  end
end
