class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :description
      t.belongs_to :character
      
      t.timestamps
    end
  end
end
