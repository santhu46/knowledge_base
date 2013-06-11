class CreateOfflineResources < ActiveRecord::Migration
  def change
    create_table :offline_resources do |t|
      t.string :name
      t.string :description
      t.references :resource

      t.timestamps
    end
  end
end
