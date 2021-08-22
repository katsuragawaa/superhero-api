class CreateHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :heros do |t|
      t.belongs_to :team, null: false, foreign_key: true
      t.string :name
      t.string :power
      t.string :race

      t.timestamps
    end
  end
end
