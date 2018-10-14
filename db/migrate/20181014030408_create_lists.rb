class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.references :user
      t.string :type

      t.timestamps
    end

    add_index :lists, :user_id
  end
end
