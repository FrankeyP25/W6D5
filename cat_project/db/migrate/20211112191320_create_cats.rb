class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :birth_date, null: false
      t.string :color, null: false
      t.string :name, null: false
      t.text :sex, null: false, :limit => 1
      t.text :description, null: false, :limit => 50

      t.timestamps

    end
    add_index :cats, :birth_date
  end
end
