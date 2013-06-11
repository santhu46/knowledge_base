class Language < ActiveRecord::Base
 attr_accessible :description, :name
 has_many :resources
 has_many :categories
end
