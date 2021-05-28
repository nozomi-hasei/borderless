class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :text_tag, null:false
      t.string :text_memo, null:false
      t.string :color, null:false
      t.timestamps
    end
  end
end
