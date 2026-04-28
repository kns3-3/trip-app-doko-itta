class CreateTrips < ActiveRecord::Migration[8.1]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :address
      t.date :visited_at
      t.text :comment
      t.string :photo

      t.timestamps
    end
  end
end
