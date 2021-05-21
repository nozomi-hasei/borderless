class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text        :text_comment, null: false
      t.references  :user, foregin_key: true
      t.references  :project,    foregin_key: true
      t.timestamps
    end
  end
end
