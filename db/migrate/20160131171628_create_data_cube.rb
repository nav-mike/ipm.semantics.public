class CreateDataCube < ActiveRecord::Migration
  def change
    create_table :people_projects, :id => false do |t|
      t.integer :person_id
      t.integer :project_id
    end

    add_index :people_projects, %i(person_id project_id)

    create_table :people_publications, id: false do |t|
      t.integer :person_id
      t.integer :publication_id
    end

    add_index :people_publications, %i(person_id publication_id)

    create_table :projects_publications, id: false do |t|
      t.integer :project_id
      t.integer :publication_id
    end
  end
end
