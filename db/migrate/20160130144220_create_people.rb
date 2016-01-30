class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :linkedin, null: true, default: nil
      t.string :google_plus, null: true, default: nil
      t.string :scopus, null: true, default: nil
      t.string :university, null: false
      t.string :awards
      t.string :impact_story, null: true, default: nil
      t.string :google_scholar, null: true, default: nil
      t.string :cv, null: true, default: nil
      t.string :orcid, null: true, default: nil
      t.string :name, index: true, null:false
      t.text :biography
      t.string :email, null: true, default: nil
      t.string :room, null: true, default: nil
      t.string :laboratory, null: true, default: nil
      t.string :website, null: true, default: nil
      t.string :github, null: true, default: nil
      t.string :education, null: true, default: nil
      t.string :twitter, null: true, default: nil
      t.string :photo, null: true, default: nil
      t.string :fb, null: true, default: nil

      t.timestamps null: false
    end
  end
end
