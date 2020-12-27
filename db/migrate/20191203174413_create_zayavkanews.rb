class CreateZayavkanews < ActiveRecord::Migration[5.1]
  def change
    create_table :zayavkanews do |t|
      t.string :name
      t.string :name2
      t.string :mail

      t.timestamps
    end
  end
end
