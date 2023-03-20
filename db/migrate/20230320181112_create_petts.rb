class CreatePetts < ActiveRecord::Migration[7.0]
  def change
    create_table :petts do |t|
      t.string :name
      t.string :breed
      t.string :image

      t.timestamps
    end
  end
end
