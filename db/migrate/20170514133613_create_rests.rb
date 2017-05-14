class CreateRests < ActiveRecord::Migration[5.0]
  def change
    create_table :rests do |t|
      t.string :kind
      t.string :duration
      t.string :location

      t.timestamps
    end
  end
end
