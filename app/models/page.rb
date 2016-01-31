class Page < ActiveRecord::Base
  before_save :valid_path

  def valid_path
    self.path = "/#{self.path}" unless self.path[0] == '/'
  end
end
