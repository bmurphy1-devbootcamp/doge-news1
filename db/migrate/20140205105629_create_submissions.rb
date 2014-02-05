class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title
      t.string :url
      t.string :text #?
      t.integer :user_id
      t.timestamps
    end
  end
end
