class CreateTeammates < ActiveRecord::Migration[6.1]
  def change
    create_table :teammates do |t|
      t.belongs_to :user
      t.string :name
      t.string :email
      t.timestamps null: false
      
    end
  end
end
