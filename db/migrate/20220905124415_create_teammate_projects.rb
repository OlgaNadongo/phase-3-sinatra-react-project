class CreateTeammateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :teammate_projects do |t|
      t.belongs_to :teammate
      t.belongs_to :project
    end
  end
end
