class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user, index: true, null: false
      t.references :category, index: true, null: false
      t.string :title, null: false
      t.string :body

      t.timestamps
    end
  end
end
