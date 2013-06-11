class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
	    t.references :resourcable, :polymorphic => true
      t.timestamps
    end
  end
end
