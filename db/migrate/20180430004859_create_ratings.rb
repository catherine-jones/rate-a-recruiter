class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings, id: :uuid do |t|
      t.integer :rating
      t.text :review
      t.references :recruiters, type: :uuid, index: true
      t.references :users, type: :uuid, index: true
      t.timestamps
    end
  end
end
