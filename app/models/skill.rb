class Skill < ActiveRecord::Base
  belongs_to :user
  validates :title, :presence => true
  validates :example, :presence => true
end
