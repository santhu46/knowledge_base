class Knowledge < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
  belongs_to :user
  has_many :categories
  has_many :languages, :through => :categories
  has_many :resources, :as => :resourcable
  has_many :frameworks, :through => :categories
  has_many :servers, :through => :categories
  has_many :others, :through => :categories
end


