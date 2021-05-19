class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string     :main_title, null:false
      t.string     :start_date, null:false
      t.string     :finish_date, null:false
      t.string     :department, null:false
      t.string     :category, null:false
      t.string     :project_memo, null:false
      t.references :user, foregin_key: true
      t.timestamps
    end
  end
end
