Rails.application.routes.draw do
  root "resumes#new"

  get "/resumes/new", to: "resumes#new"
  post "/resumes", to: "resumes#create"
end