json.array!(@projects) do |project|
  json.extract! project, :id, :github, :twitter, :keywords, :status, :title, :name, :logo, :start_date, :end_date, :description, :link
  json.url project_url(project, format: :json)
end
