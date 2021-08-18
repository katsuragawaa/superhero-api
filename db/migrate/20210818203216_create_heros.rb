class CreateHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :power
      t.string :race

      t.timestamps
    end
  end
end
