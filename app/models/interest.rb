class Interest < ActiveRecord::Base
  validates :heading, :presence => true
  validates :body, :presence => true
end
