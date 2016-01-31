class Page < ActiveRecord::Base
  before_save :valid_path

  def valid_path
    path = "/#{path}" unless path[0] == '/'
  end
end
