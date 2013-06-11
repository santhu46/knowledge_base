class CreateFrameworks < ActiveRecord::Migration
  def change
    create_table :frameworks do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
