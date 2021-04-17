class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :school
      t.integer :age

      t.timestamps
    end
  end
end
