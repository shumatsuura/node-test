class CreateCovids < ActiveRecord::Migration[5.2]
  def change
    create_table :covids do |t|
      t.string :prefecture
      t.date :confirmed_date

      t.timestamps
    end
  end
end
