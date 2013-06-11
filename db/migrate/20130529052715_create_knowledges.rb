class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
