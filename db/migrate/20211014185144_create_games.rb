class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :year
      t.decimal :north_america_sales
      t.references :publisher_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
