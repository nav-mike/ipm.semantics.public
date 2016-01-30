class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, index: true, null: false
      t.string :path, null: false
      t.string :title, null: false
      t.text :html

      t.timestamps null: false
    end
  end
end
