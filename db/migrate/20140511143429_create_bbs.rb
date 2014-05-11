class CreateBbs < ActiveRecord::Migration
  def change
    create_table :bbs do |t|
      t.string :name
      t.text :text
      t.string :time

      t.timestamps
    end
  end
end
