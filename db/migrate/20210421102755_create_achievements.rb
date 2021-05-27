class CreateAchievements < ActiveRecord::Migration[6.1]
  def change
    create_table :achievements do |t|
      t.references :person, null: false, foreign_key: true
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
