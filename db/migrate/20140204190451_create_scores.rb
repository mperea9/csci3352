class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :scenario
      t.string :difficulty
      t.boolean :realtime
      t.integer :quarantined
      t.integer :infected
      t.integer :saved

      t.timestamps
    end
  end
end
