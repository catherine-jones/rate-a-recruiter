class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings, id: :uuid do |t|
      t.integer :score, :inclusion => { :in => 1..10 }
      t.text :review
      t.references :recruiter, type: :uuid, index: true, foreign_key: true, null: false
      t.references :user, type: :uuid, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
