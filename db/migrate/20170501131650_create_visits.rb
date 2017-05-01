class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.string :name
      t.string :country
      t.string :photo
      t.string :diary
      t.timestamps
    end
  end
end
