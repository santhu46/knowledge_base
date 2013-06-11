class OnlineResource < ActiveRecord::Base
  attr_accessible :description, :name, :url, :resource_id
  belongs_to :resource, :polymorphic => true
end
