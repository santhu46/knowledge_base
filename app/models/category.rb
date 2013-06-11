class Category < ActiveRecord::Base
  attr_accessible :description, :name, :knowledge_id, :language_id,:framework_id, :other_id,:server_id
  belongs_to :knowledge
  belongs_to :language
  belongs_to :framework
  belongs_to :other
  belongs_to :server
end
