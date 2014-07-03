class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :originial
      t.string :converted

      t.timestamps
    end
  end
end
