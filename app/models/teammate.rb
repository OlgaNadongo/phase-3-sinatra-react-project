class Teammate <ActiveRecord::Base
    belongs_to :user
    has_many :teammate_projects
    has_many :projects, through: :teammate_projects
end