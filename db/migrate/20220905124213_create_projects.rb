class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.belongs_to :user
      t.string :title
      t.timestamps null: false
    end
  end
end
