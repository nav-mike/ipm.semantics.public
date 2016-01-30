json.array!(@people) do |person|
  json.extract! person, :id, :linkedin, :google_plus, :scopus, :university, :awards, :impact_story, :google_scholar, :cv, :orcid, :name, :biography, :email, :room, :laboratory, :website, :github, :education, :twitter, :photo, :fb
  json.url person_url(person, format: :json)
end
