class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :log
      t.string :pas

      t.timestamps
    end
  end
end
