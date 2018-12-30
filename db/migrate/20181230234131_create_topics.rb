class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :name
      t.boolean :public, default:true
      t.text :desciption

      t.timestamps
    end
  end
end
