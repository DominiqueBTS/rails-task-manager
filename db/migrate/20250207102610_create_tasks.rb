class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :task
      t.text :details
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
