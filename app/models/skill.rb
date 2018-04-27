class Skill < ActiveRecord::Base
  validates :title, :presence => true
  # validates :example, :presence => true
end
