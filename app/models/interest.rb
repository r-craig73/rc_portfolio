class Interest < ActiveRecord::Base
  belongs_to :user
  validates :heading, :presence => true
  validates :body, :presence => true
end
