class Recruiters < ActiveRecord::Migration[5.2]
  def change
    create_table :recruiters, id: :uuid do |t|
      t.string :company_name
      t.timestamps
    end
  end
end
