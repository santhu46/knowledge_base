class CreateOnlineResources < ActiveRecord::Migration
  def change
    create_table :online_resources do |t|
      t.string :name
      t.string :description
      t.string :url
      t.references :resource

      t.timestamps
    end
  end
end
