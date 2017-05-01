class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :recommendations_rating
      t.string :safety_rating
      t.string :comment
      t.timestamps
      t.references :user, index: true, foreign_key: true, null: false
      t.references :visit, index: true, foreign_key: true, null: false
    end
  end
end
