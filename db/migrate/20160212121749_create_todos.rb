class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.integer :priority
      t.boolean :finished
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
