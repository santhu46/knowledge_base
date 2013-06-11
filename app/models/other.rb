class Other < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :categories
  has_many :resources, :as => :resourcable
end
