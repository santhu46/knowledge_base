class Resource < ActiveRecord::Base
  # attr_accessible :title, :body
attr_accessible :resourcable_id, :resourcable_type
	belongs_to :resourcable, :polymorphic => true
has_many :online_resources
has_many :offline_resources

end
