class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :description
      t.belongs_to :task, foreign_key: true
  
      t.timestamps
    end
  end
end