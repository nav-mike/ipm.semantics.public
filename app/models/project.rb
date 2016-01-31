class Project < ActiveRecord::Base
  serialize :keywords, JSON
end
