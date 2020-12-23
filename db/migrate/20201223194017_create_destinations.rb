class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :date_visited
      t.string :address
      t.string :category
      t.text :comment
      t.boolean :visited
      t.float :cost
      t.string :attendees
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
