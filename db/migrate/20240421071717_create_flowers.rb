class CreateFlowers < ActiveRecord::Migration[6.1]
  def change
    create_table :flowers do |t|
      t.string :name
      t.text :about
      t.string :feeling
      t.string :category
      t.string :Prefecture
      t.string :username
      t.date :date

      t.timestamps
    end
  end
end
