class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :nv
      t.string :nt
      t.string :vop
      t.string :otv

      t.timestamps
    end
  end
end
