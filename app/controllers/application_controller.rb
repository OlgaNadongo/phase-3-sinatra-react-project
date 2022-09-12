require 'pry'
require "sinatra"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    # { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    users=User.all
    users.to_json
  end

  post "/users" do
    users=User.find_by(email: params[:email],password_digest: params[:password])
    users.to_json
  end

  get "/projects" do
    #  binding.pry
    projects=Project.all
    projects.to_json
  end

  post "/projects" do
    projects=Project.create("title": params[:title])
    projects.to_json
  end

  delete '/projects/:id' do
    project= Project.find(params[:id])
    project.destroy
    project.to_json
  end

  get "/teammates" do
    teammates=Teammate.all
    teammates.to_json
  end

  post "/teammates" do
    teammate=Teammate.create("name": params[:name],"email": params[:email])
    teammate.to_json
  end

  delete '/teammates/:id'do
    teammate= Teammate.find(params[:id])
    teammate.destroy
    teammate.to_json
  end

  get "/teammate_projects" do
    teammate_projects=TeammateProject.all
    teammate_projects.to_json
  end

end
