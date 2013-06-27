class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :estimated_hours
      t.string :priority
      t.timestamp :start_date
      t.timestamp :end_date
      t.text :description
      t.decimal :task_rate

      t.timestamps
    end
  end
end
