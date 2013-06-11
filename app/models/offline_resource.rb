class OfflineResource < ActiveRecord::Base
  attr_accessible :description, :name, :resource_id
 belongs_to :resource, :polymorphic => true
end
