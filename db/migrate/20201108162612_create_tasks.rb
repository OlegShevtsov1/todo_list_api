class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status, default: false
      t.belongs_to :project, foreign_key: true
      t.datetime :deadline
      t.integer :position

      t.timestamps
    end
  end
end
